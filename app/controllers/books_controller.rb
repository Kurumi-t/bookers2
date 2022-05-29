class BooksController < ApplicationController
  

  def index
  end

  def show
  end

  def edit
  end
  
  private
  
  def book_params
    params.require(:book).permit(:shop_name, :image, :caption)
  end
  
end
