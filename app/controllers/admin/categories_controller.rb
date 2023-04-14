class Admin::CategoriesController < ApplicationController
  
  def index
    # 一覧
    @categories = Category.all
    @seasons = Season.all
    @prefectures = Prefecture.all
    # 追加
    @category = Category.new
    @season = Season.new
    @prefecture = Prefecture.new
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
