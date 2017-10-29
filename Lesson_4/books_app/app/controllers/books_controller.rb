class BooksController < ApplicationController
  before_action :find_book, only: %i[show edit update destroy]

  def index
    @books = Book.all
  end

  def new
    @books = Book.new
  end

  def create
    Book.create(params.require(:book).permit(:name, :author))

    redirect_to books_path
  end

  def show
  end

  def edit
  end

  def update
    Book.update(params.require(:book).permit(:name, :author))

    redirect_to books_path
  end

  def destroy
    @book.destroy

    redirect_to books_path
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end
end
