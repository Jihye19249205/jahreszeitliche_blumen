class Public::PicturesController < ApplicationController
  
  def picture_select
    
  end
  
  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    # if params[:post]
      if @picture.save(context: :publicize)
        flash[:notice] = "投稿が成功しました！"
        redirect_to user_path
      else
        flash[:notice] = "投稿に失敗しました。お手数ですが、入力内容を再度お確かめください。"
        render :new
      end
    # else
    #   if @picture.update
  end

  def index
    @pictures = Picture.all
    @pictures = Picture.order('id DESC').limit(3)
  end

  def show
    @picture = Picture.find(params[:id])
    @picture_comment = PictureComment.new
    @picture_comments = PictureComments(params[:picture_id])
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update
      flash[:notice] = "投稿編集が完了しました！"
      redirect_to user_path
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
      :cartion,
      :station,
      :flower_plant,
      :image
      )
  end

end
