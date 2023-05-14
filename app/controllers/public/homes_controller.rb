class Public::HomesController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!
  
  def index
  end
  
  def top
  end

  def about
  end
  
  

end
