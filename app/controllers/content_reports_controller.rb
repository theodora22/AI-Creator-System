class ContentReportsController < ApplicationController
  def index
    @content_reports = ContentReport.order(created_at: :desc)
  end

  def show
    @content_report = ContentReport.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
