class ContentReportsController < ApplicationController
  before_action :set_content_report, only: [ :show, :edit, :update, :destroy ]

  CREATE_PROMPT = <<-PROMPT
    "Dear LLM, your are helping a content creator to create a content report based on a Ruby LLM schema provided to you. Your tasks is to create a customized content report based on the user input and the schema."
  PROMPT

  def index
    @content_reports = ContentReport.order(created_at: :desc)
  end

  def show
    @chats = @content_report.chats.where(user: current_user).order(created_at: :desc)
  end

  def new
    @content_report = ContentReport.new(new_content_report_params)
  end

  def create
    user_prompt = helpers.sanitize(params[:content])
    chat = RubyLLM.chat
    response = chat.with_schema(ContentReportSchema).ask("#{CREATE_PROMPT}, please create a content report based on #{user_prompt}")

    report_attrs = response.content.slice("content_title", "content_type", "content_hook", "content_length", "content_platform", "system_prompt")
    @content_report = ContentReport.new(report_attrs)
    if @content_report.save
      redirect_to @content_report, notice: "Content report was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @content_report.update(content_report_params)
      redirect_to @content_report, notice: "Content report was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @content_report.destroy
    redirect_to content_reports_path, notice: "Content report was deleted."
  end

  private

  def set_content_report
    @content_report = ContentReport.find(params[:id])
  end

  def content_report_params
    params.require(:content_report).permit(:content_title, :content_type, :content_hook, :content_length, :content_platform, :system_prompt)
  end

  def new_content_report_params
    params.permit(:content_title, :content_type, :content_hook, :content_length, :content_platform, :system_prompt)
  end
end
