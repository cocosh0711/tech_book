class MemosController < ApplicationController
  def index
    @memos = Memo.all
    render json: @memos
  end

  def create
    @memo = Memo.new(
      book_id: params[:book_id],
      content: params[:content],
      page: params[:page]
    )
    if @memo.save
      render json: @memo, status: :created
    else
      render json: @memo.errors, status: :unprocessable_entity
    end
  end


end
