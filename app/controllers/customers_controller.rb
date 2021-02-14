class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @customer = Customer.new
    @customer_show = Customer.find(params[:id])
  end

  private

  def customer_params
    params.require(:customer).permit(:order_date, :store_id, :name, :name_kana, :phone, :email, :address_zip, :address,
                                     :residence_zip, :residence, :status_id)
  end
end
