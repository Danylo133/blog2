class CategoriesController < ApplicationController
  def posts
      @category = Category.find(params[:id])
      @posts = @category.posts
  end
end
