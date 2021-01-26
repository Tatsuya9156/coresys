# frozen_string_literal: true

class Workers::RegistrationsController < Devise::RegistrationsController
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
    devise_parameter_sanitizer.permit(:sign_up, keys: [:worker_number, :name, :name_kana, :phone, :address_zip, :address, :warehouse_zip, :warehouse, :inaba, :yodo, :takubo, :ykkap, :sankyo, :lixil])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  def current_employee_is_admin?
    current_employee.admin == true
  end

  def sign_up(resource_name, resource)
    if !current_employee_is_admin?
      sign_in(resource_name, resource)
    end
  end

  def creatable?
    if !current_employee_is_admin?
      redirect_to root_path
    end
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
