class BooksController < ApplicationController

  skip_before_action :authorized, only: [:index, :show]

  def index
    @books = Book.all
  end

  def show
    #byebug
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new

  end

  def create
    # byebug
    @book = Book.new(book_params)
    @book.subject = Subject.find(params[:book][:subject_id])


    if @book.valid?
      @book.save
      redirect_to book_path(@book)
    else
      redirect_to new_book_path
    end

  end

  def edit

  end


  private

  def book_params
    params.require(:book).permit(:title, :author, :year, :publisher, :description, :subject_id, :img_url)

  end


end
