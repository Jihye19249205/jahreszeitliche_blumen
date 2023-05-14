class Admin::PicturesController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!

  def search
    if params[:keyword].present?
      @pictures = Photo.where('caption LIKE ?', "%#{params[:keyword]}%")
      @keyword = params[:keyword]
    else
      @pictures = Picture.all
    end
  end

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(picture_params)
    @picture.update
    redirect_to admin_picture_path
  end

  def destroy
  end

  private

  def picture_params
    params.require(:picture).permit(:spot_name, :caption, :station)
  end

end
