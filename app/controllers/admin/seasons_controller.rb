class Admin::SeasonsController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!
  
  def index
    @seasons = Season.all
  end

  def edit
    @season = Season.find(params[:id])
  end

  def update
    @season = Season.find(params[:id])
  end
  
  private
  
  def season_params
    params.require(:season).permit(:season)
  end
  
end
