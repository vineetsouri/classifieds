class CategoriesController < ApplicationController
  def index
    @categories = ["Jobs", "Products", "Services", "Education", "Marriage", "Tenders", "Events", "Real Estate"]
  end
end
