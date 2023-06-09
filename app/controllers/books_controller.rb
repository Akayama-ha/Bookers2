class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:id])
    @book.user_id = current_user.id
    if @book.save
     redirect_to books_path
    else
     render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
  end

  def edit
    @book = Book.find(params[:id])
  end


private

def book_params
  params.require(:book).permit(:title, :caption)
end


end
