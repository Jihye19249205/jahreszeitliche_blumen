class Admin::CategoriesController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!
  
  def index
    @categories = Category.all
    @category = Category.new
  end
  
  def create
    @categry = Category.new(category_params)
    @category.save
    redirect_to admin_categories_path
  end
  
  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])
    @category.update
    redirect_to admin_categories_path
  end
  
  private
  
  def category_params
    params.require(:category).permit(:name)
  end

end
