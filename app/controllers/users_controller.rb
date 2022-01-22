class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = current_user.books.all
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def edit
    
  end

  def update
  end

end
