class Public::PicturesController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def search
    if params[:keyword].present?
      @pictures = Picture.where('caption LIKE ?', "%#{params[:keyword]}%")
      @keyword = params[:keyword]
    else
      @pictures = Picture.all
    end
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

  def index
    @pictures = Picture.all
    @pictures = Picture.order('id DESC').limit(3)
  end

  def show
    @picture = Picture.find(params[:id])
    @picture_comment = PictureComment.new
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      flash[:notice] = "投稿編集が完了しました！"
      redirect_to picture_path(@picture.id)
    else
      render :edit
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to user_path
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
      :image
      )
  end

end
