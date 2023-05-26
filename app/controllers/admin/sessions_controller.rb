# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  # before_action :configure_permitted_parameters, if: :devise_controller?
  layout 'layout_admin'
  before_action :authenticate_admin!

  def after_sign_in_path_for(resource)
    flash[:notice] = "正常にログインしました"
    admin_root_path
  end

  def after_sign_out_path_for(resource)
    flash[:notice] = "正常にログアウトしました"
    new_admin_session_path
  end

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:email])
  # end

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
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
