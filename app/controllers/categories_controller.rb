class CategoriesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index, :show]
  def index
    @categories = Category.all
  end

  def show
    category = Category.find(params[:id])
    @posts = Post.where(category_id:  category.id).order(id: :desc)
  end

end
