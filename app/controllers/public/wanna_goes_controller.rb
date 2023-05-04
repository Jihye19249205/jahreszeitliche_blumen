class WannaGoesController < ApplicationController

  def create
    picture = Picture.find(params[:picture_id])
    wanna_go = current_user.wanna_goes.new(picture_id: picture.id)
    wanna_go.save
    redirect_to picture_path(picture)
  end

  def destroy
    picture = Picture.find(params[:picture_id])
    wanna_go = current_user.wanna_goes.find_by(picture_id: picture.id)
    wanna_go.destroy
    redirect_to picture_path(picture)
  end
  
end
