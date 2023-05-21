class Admin::UsersController < ApplicationController
  layout 'layout_admin'
  before_action :authenticate_admin!

  def index
    @users = User.all.page(params[:page])
  end

  def show
    @user = User.find(params[:id])
    @pictures = @user.pictures.all
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
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :nick_name,
      :prefecture,
      :phone_number,
      :email,
      :is_deleted)
  end

end
