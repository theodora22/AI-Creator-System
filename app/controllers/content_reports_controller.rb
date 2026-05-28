class ContentReportsController < ApplicationController
  def index
    @content_reports = ContentReport.order(created_at: :desc)
  end

  def show
    @content_report = ContentReport.find(params[:id])
  end

  def new
    @content_report = ContentReport.new
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
      redirect_to @content_report,
        notice: "Content report updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def content_report_params
    params.require(:content_report).permit(:content_title, :content_type, :content_hook, :content_length, :content_platform, :system_prompt)
  end
end
