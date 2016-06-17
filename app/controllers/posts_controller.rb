class PostsController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:index, :show]
  before_action :fetch_categories, only: [:new, :create, :edit, :update]
  
  def new
    @post = current_user.posts.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save!
      redirect_to posts_path
    else
      render :new
    end 
  end

  def index
    @posts = current_user.posts.order(id: :desc)
  end

  def edit
    @post = current_user.posts.find(params[:id])
  end

  def update
    @post = current_user.posts.find(params[:id])
    @post.update_attributes(post_params)
    redirect_to posts_path
  end

  private

    def post_params
      params.require(:post).permit(:title, :category_id, :description, 
                                   :contact_name, :contact_no, :contact_email)
    end

    def fetch_categories
      @categories = Category.all
    end
end
