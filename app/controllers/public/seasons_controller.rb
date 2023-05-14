class Public::SeasonsController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def index
    @seasons = Season.all
  end
end
