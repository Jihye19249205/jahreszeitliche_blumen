class Public::CategoriesController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def index
    @categories = Category.all
    # @prefectures = @categories.prefecture.all
    # @seasons = @categories.season.all
  end
end
