class CustomersController < ApplicationController
  before_action :current_user_is_employee?, only: [:index, :create, :show]

  def index
    @customers = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def show
    @customer = Customer.new
    @customer_show = Customer.find(params[:id])
  end

  private

  # ストロングパラメーター
  def customer_params
    params.require(:customer).permit(:order_date, :store_id, :name, :name_kana, :phone, :email, :address_zip, :address,
                                     :residence_zip, :residence, :status_id)
  end

  # ログインユーザーが社員でなければroot_pathへリダイレクトされる
  def current_user_is_employee?
    redirect_to root_path if worker_signed_in? && !employee_signed_in?
  end
end
