class ChatsController < ApplicationController
  before_action :authenticate_user!

  def create
    @content_report = ContentReport.find(params[:content_report_id])

    @chat = Chat.create!(
      user: current_user,
      content_report: @content_report
    )

    redirect_to chat_path(@chat)
  end

  def show
    @chat = current_user.chats.find(params[:id])
    @message = Message.new
  end
end
