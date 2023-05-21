class Public::UsersController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!
  before_action :set_user, only: [:wanna_goes]

  def wanna_goes
    @user = User.find(params[:id])
    wanna_goes= WannaGo.where(user_id: @user.id).pluck(:picture_id)
    @wanna_go_pictures = Picture.find(wanna_goes)
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
    if @user.email == 'guest@example.com'
      flash[:alert] = "ゲストユーザーはユーザー情報の編集はできません"
      render :edit
    else
      @user.update(user_params)
      flash[:notice] = "登録情報が更新されました"
      redirect_to user_path(current_user)
    end
  end

  def confirm_withdraw
  end

  def withdraw
    @user = current_user
    @user.update(is_deleted: true)
    reset_session
    redirect_to root_path
    flash[:notice] = "ご利用いただきありがとうございました。"
  end

  private

  def user_params
    params.require(:user).permit(
      :nick_name,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :introduction,
      :prefecture_id,
      :phone_number,
      :email,
      :is_deleted,
      :profile_image,
      :picture_id
    )
  end

  def set_user
    @user = User.find(params[:id])
  end

end
