class Public::CategoriesController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def index
    @categories = Category.all
  end
end
