class BooksController < ApplicationController
  def index
    @books = Book.all.includes(:reading_logs)
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(
      title: params[:title],
      total_pages: params[:total_pages]
    )
    if @book.save
      render json: @book, status: :created
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end


  def update
    @book = Book.find(params[:id])
    @book.title = params[:title]
    @book.total_pages = params[:total_pages]

    if @book.save
      render json: @book, status: :no_content
    else
      render json: @book.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    render json: @book, status: :no_content
  end


end
