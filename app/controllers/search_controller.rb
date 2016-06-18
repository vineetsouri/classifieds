class SearchController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:search]
  def search
    if params[:q].nil?
      @posts = []
    else
      @posts = Post.search(params[:q])
    end
  end

end
