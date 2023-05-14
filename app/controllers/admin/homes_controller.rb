class Admin::HomesController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!
  
  def top
    @pictures = Picture.order('id DESC').limit(8)
  end
end
