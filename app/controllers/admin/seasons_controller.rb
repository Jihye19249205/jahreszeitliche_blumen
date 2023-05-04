class Admin::SeasonsController < ApplicationController
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
