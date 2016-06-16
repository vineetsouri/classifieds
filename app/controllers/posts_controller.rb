class PostsController < ApplicationController
  before_action :fetch_user, only: [:create]
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
  end

  private

  def post_params
    params.require(:post).permit(:title, :category_id, :description, 
                                 :contact_name, :contact_no, :contact_email)
  end

  def fetch_user
    @user = current_user
  end
end
