class UsersController < ApplicationController
<<<<<<< HEAD
  def show
  end
  
  def index
  end
  
  def edit 
  end
  
  def update
  end
  
=======

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books.all
  end

  def index
    @book = Book.new
    @users = User.all
    @user = current_user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

 private

  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end


>>>>>>> 343c46cdff89e66052efb2f692c6b4896e08e375
end
