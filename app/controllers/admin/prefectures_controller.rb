class Admin::PrefecturesController < ApplicationController
  
  def index
    @prefecture = Prefecture.all
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
