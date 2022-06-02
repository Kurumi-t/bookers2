class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @books = Book.all
  end

  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
