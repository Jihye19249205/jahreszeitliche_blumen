class Public::PictureCommentsController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!
  
  def new
    @picture_comment = PictureComment.new
  end
  
  def create
    picture = Picture.find(params[:picture_id])
    picture_comment = current_user.post_comments.new(picture_comment_params)
    picture_comment.picture_id = picture.id
    picture_comment.save
    redirect_to picture_path(picture)
  end
  
  private
  
  def picture_comment_params
    params.require(:picture_comment).permit(:comment)
  end
  
end
