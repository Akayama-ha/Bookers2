class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:id])
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path
  end

  def index
  end

  def show
  end

  def edit
  end


private

def book_params
  params.require(:book).permit(:title, :caption)
end


end