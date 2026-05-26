class ContentReportsController < ApplicationController
  def index
  end

  def show
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
  end

  private

  def content_report_params
    params.require(:content_report).permit(:content_type, :content_hook, :content_lenght, :content_platform, :system_prompt)
  end
end
