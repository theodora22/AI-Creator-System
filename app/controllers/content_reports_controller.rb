class ContentReportsController < ApplicationController
  before_action :set_content_report, only: [ :show, :edit, :update, :destroy ]

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
    @content_report = ContentReport.new(content_report_params)
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
