class Admin::PicturesController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!

  def search
    search_word = params[:word]
    @pictures = Picture.where("flower_plant LIKE ?", "%#{search_word}%")
    @pictures = @pictures.where("season_id LIKE ?", "%#{params[:season_id]}%")
    @pictures = @pictures.where("prefecture_id LIKE ?", "%#{params[:prefecture_id]}%")
    if @pictures.size > 0
      flash[:notice] = "#{@pictures.count}件の投稿が見つかりました"
    else
      @pictures = Picture.all
      flash[:alert] = "投稿が見つかりませんでした"
    end
    render 'index'
  end

  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    @picture_comments = @picture.picture_comments.all
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update(picture_params)
    redirect_to admin_picture_path
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to admin_user_path(@picture.user)
  end

  private

  def picture_params
    params.require(:picture).permit(:spot_name, :caption, :station, :image)
  end

end
