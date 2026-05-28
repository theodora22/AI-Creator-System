class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chat

  def create
    @message = @chat.messages.build(message_params)
    @message.role = "user"

    if @message.save
      begin
        build_conversation_history
        ai_response = @ruby_llm_chat.ask(@message.content)
        
        @assistant_message = @chat.messages.build(
          role: "assistant",
          content: ai_response.content
        )
        @assistant_message.save!
      rescue => e
        logger.error "AI Strategy Chat Error: #{e.message}"
        @assistant_message = @chat.messages.build(
          role: "assistant",
          content: "Sorry, I encountered an error while processing your request. Please try again."
        )
        @assistant_message.save!
      end

      respond_to do |format|
        format.turbo_stream
        format.html { redirect_to chat_path(@chat) }
      end
    else
      respond_to do |format|
        format.turbo_stream { render :create, status: :unprocessable_entity }
        format.html { render "chats/show", status: :unprocessable_entity }
      end
    end
  end

  private

  def set_chat
    @chat = current_user.chats.find(params[:chat_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end

  def build_conversation_history
    @ruby_llm_chat = RubyLLM.chat

    system_prompt = [
      "You are an expert Content Strategy Assistant.",
      "Report context:",
      "- Platform: #{@chat.content_report.content_platform}",
      "- Content Type: #{@chat.content_report.content_type}",
      "- Hook: #{@chat.content_report.content_hook}",
      "- Length: #{@chat.content_report.content_lenght}"
    ]

    if @chat.content_report.system_prompt.present?
      system_prompt << "Additional Instructions:\n#{@chat.content_report.system_prompt}"
    end

    @ruby_llm_chat.add_message(role: :system, content: system_prompt.join("\n\n"))

    # Loop through past messages (excluding the new one being sent now)
    past_messages = @chat.messages.where.not(id: nil)
    past_messages = past_messages.where.not(id: @message.id) if @message.persisted?
    
    past_messages.order(:created_at).each do |msg|
      @ruby_llm_chat.add_message(role: msg.role.to_sym, content: msg.content)
    end
  end
end
