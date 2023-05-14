class Admin::PrefecturesController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!
  
  def index
    @prefectures = Prefecture.all
  end
  
  def create
    @prefecture = Prefecture.find(params[:id])
  end
  
  def edit
    @prefecture = Prefecture.find(params[:id])
  end
  
  def update
    @prefecture = Prefecture.find(params[:id])
  end
  
  private
  
  def prefecture_params
    params.require(:prefecture).permit(:prefecture)
  end
  
end
