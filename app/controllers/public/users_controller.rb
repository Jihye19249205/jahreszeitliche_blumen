class Public::UsersController < ApplicationController
  layout 'layout_user'
  before_action :authenticate_user!

  def wanna_goes
    wanna_goes = WannaGo.where(user_id: @user.id).pluck(:picture_id)
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
    @user.update(user_params)
    flash[:notice] = "登録情報が更新されました"
    redirect_to user_path(current_user)
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
      :profile_image
    )
  end

end
