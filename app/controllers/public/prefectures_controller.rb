class Public::PrefecturesController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!
  
  def index
    @prefectures = Prefecture.all
  end
  
end
