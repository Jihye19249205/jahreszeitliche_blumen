class Public::PictureCommentsController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def create
    picture = Picture.find(params[:picture_id])
    comment = current_user.picture_comments.new(picture_comment_params)
    comment.picture_id = picture.id
    comment.save
    redirect_to picture_path(picture)
  end

  def destroy
    PictureComment.find(params[:picture_id]).destroy
    redirect_to picture_path(@user)
  end

  private

  def picture_comment_params
    params.require(:picture_comment).permit(:comment, :picture_id)
  end

end
