# frozen_string_literal: true

class Employees::RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: [:cancel]
  before_action :creatable?, only: [:new, :create]
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: [:face_image, :employee_number, :name, :name_kana, :section, :position, :phone, :admin])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # 管理者権限を持っている
  def current_employee_is_admin?
    worker_signed_in? == false && current_employee.admin == true
  end

  # 管理者権限を持つ社員でのみユーザー新規登録が可能
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource) if !current_employee_is_admin?
  end

  # 管理者権限を持つ社員でなければroot_pathへリダイレクトされる
  def creatable?
    redirect_to root_path if !current_employee_is_admin?
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    employees_path(resource)
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
