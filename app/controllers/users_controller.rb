class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
    @books = Book.all
  end

  def edit
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
