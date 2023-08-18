class Public::PicturesController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def search
    search_word = params[:word]
    @pictures = Picture.where("flower_plant LIKE ?", "%#{search_word}%")
    @pictures = @pictures.where("season_id LIKE ?", "%#{params[:season_id]}%")
    @pictures = @pictures.where("prefecture_id LIKE ?", "%#{params[:prefecture_id]}%")
    if @pictures.size > 0
      flash[:notice] = "#{@pictures.count}件の投稿が見つかりました"
    else
      flash[:notice] = "投稿が見つかりませんでした"
    end
    render 'index'
  end

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    @picture.user_id = current_user.id
    if @picture.save
      flash[:notice] = "投稿が成功しました！"
      redirect_to picture_path(@picture.id)
    else
      flash[:notice] = "投稿に失敗しました。お手数ですが、入力内容を再度お確かめください。"
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
    @picture_comment = PictureComment.new
  end

  def edit
    @picture = Picture.find(params[:id])
    unless @picture.user.id == current_user.id
      redirect_to pictures_path
    end
  end

  def update
    @picture = Picture.find(params[:id])
    unless @picture.user.id == current_user.id
      redirect_to pictures_path
    end
    if @picture.update(picture_params)
      flash[:notice] = "投稿編集が完了しました！"
      redirect_to picture_path(@picture.id)
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:picture_id])
    @picture.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to user_path(current_user)
  end

  private

  def picture_params
    params.require(:picture).permit(
      :season_id,
      :prefecture_id,
      :spot_name,
      :caption,
      :station,
      :flower_plant,
      :image,
      :user_id
      )
  end

end
