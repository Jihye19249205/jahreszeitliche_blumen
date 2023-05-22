class Admin::PictureCommentsController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!

  def edit
    @picture_comment = PictureComment.find(params[:id])
  end

  def update
    @picture_comment = PictureComment.find(params[:id])
    picture = @picture_comment.picture
    @picture_comment.update(picture_comment_params)
    flash[:notice] = "正常に更新されました"
    redirect_to admin_picture_path(picture)
  end

  def destroy
    @picture_comment = PictureComment.find(params[:id])
    @picture_comment.destroy
    flash[:notice] = "正常に削除されました"
    redirect_to admin_pictures_path
  end

  private

  def picture_comment_params
    params.require(:picture_comment).permit(:comment, :picture_id)
  end

end
