class Admin::UsersController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!

  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @pictures = @user.pictures
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "ユーザ情報が更新されました"
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :nick_name,
      :prefecture,
      :email,
      :is_deleted)
  end

end
