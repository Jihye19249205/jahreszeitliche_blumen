class Admin::PictureCommentsController < ApplicationController
  
  def edit
    @picture_comment = PictureComment.find(params[:id])
  end
  
  def update
    @picture_comment = PictureComment.find(params[:id])
    @picture_comment.update
    redirect_to admin_edit_picture_path
  end
  
  def destroy
    @picture_comment = PictureComment.find(params[:id])
    @picture_comment.destroy
    redirect_to admin_pictures_path
  end
  
  private
  
  def picture_comment_params
    params.require(:picture_comment).permit(:comment)
  end
  
end
