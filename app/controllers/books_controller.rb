class BooksController < ApplicationController



  def create
    @user = current_user
    @books = Book.all
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to books_path(@book) , notice: "You have created book successfully."
    else
      render :index
    end
  end

  def index
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.new
    @book1 = Book.find(params[:id])
    @user = @book1.user
  end

  def edit
    @book1 = Book.find(params[:id])
    @user = current_user
   if @book1.user == current_user
     render "edit"
   else
     redirect_to books_path
   end

  end

  def update
    @book1 = Book.find(params[:id])
    @book1.update(book_params)
    redirect_to book_path(@book1), notice: "You have updated book successfully."
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
