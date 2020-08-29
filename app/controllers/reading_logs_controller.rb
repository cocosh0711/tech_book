class ReadingLogsController < ApplicationController

  def index
    @reading_logs = ReadingLog.all
    render json: @reading_logs
  end

  def create
    @reading_logs = ReadingLog.new(
      book_id: params[:book_id],
      first_page: params[:first_page],
      last_page: params[:last_page],
      duration: params[:duration]
    )
    if @reading_logs.save
      render json: @reading_logs, status: :created
    else
      render json: @reading_logs.errors, status: :unprocessable_entity
    end
  end
  
end
