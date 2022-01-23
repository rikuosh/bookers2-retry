class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to books_path(@book)
  end

  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.new
    @book1 = Book.find(params[:id])
  end

  def edit
    @book1 = Book.find(params[:id])
  end

  def update
    @book1 = Book.find(params[:id])
    @book1.update(book_params)
    redirect_to book_path(@book1)
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end



end
