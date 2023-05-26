# frozen_string_literal: true

class Public::SessionsController < Devise::SessionsController
  layout 'layout_user'
  # before_action :configure_sign_in_params, only: [:create]
  before_action :configure_sign_in_params, only: [:sign_in]
  before_action :authenticate_user!, except: [:sign_in]
  before_action :user_state, only: [:create]

  def guest_sign_in
    user = User.guest
    sign_in user
    redirect_to top_path, notice: "ゲストユーザーとしてログインしました。"
  end

  def after_sign_in_path_for(resource)
    flash[:notice] = "正常にログインしました"
    user_path(current_user)
  end

  def after_sign_out_path_for(resource)
    flash[:notice] = "正常にログアウトしました。またのご利用をお待ちしております。"
    root_path
  end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  end

  def user_state
    @user = User.find_by(email: params[:user][:email])
    if @user
     if (@user.valid_password?(params[:user][:password]) && (@user.is_deleted == true))
       flash[:alert] = "退会済みです。再登録の上ご利用ください"
       redirect_to new_user_session_path
     else
       flash[:notice] = "入力してください。"
     end
    end
  end

end
