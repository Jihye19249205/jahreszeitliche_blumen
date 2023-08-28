class Public::PictureCommentsController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def create
    @picture = Picture.find(params[:picture_id])
    comment = current_user.picture_comments.new(picture_comment_params)
    comment.picture_id = @picture.id
    comment.save
    redirect_to picture_path(@picture)
  end

  def destroy
    comment = PictureComment.find(params[:id])
    unless comment.user_id == current_user.id
      redirect_to picture_path(params[:picture_id])
    else
      comment.destroy
      redirect_to picture_path(params[:picture_id])
    end
  end

  private

  def picture_comment_params
    params.require(:picture_comment).permit(:comment)
  end

end
