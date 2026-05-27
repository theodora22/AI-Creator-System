class ChatsController < ApplicationController
  before_action :authenticate_user!

  def create
    @content_report = ContentReport.find(params[:content_report_id])

    @chat = Chat.new(title: Chat::DEFAULT_TITLE)
    @chat.content_report = @content_report
    @chat.user = current_user

    if @chat.save
      redirect_to chat_path(@chat)
    else
      @chats = @content_report.chats.where(user: current_user)
      render "content-reports/show"
    end
  end

  def show
    @chat = current_user.chats.find(params[:id])
    @message = Message.new
  end
end
