class ContentReportsController < ApplicationController
# app/controllers/reports_controller.rb

def index
  @reports = Report.order(created_at: :desc)
  # vi
end

  def show
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
