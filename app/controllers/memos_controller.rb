class MemosController < ApplicationController
  def index
    book = Book.find(params[:book_id])
    @memos = book.memos.order(page: :desc)
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


  def update
    @memo = Memo.find(params[:id])
    @memo.content = params[:content]
    @memo.page = params[:page]

    if @memo.save
      render json: @memo, status: :no_content
    else
      render json: @memo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @memo = Memo.find(params[:id])
    @memo.destroy
    render json: @memo, status: :no_content
  end

end
