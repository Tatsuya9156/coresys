class CustomersController < ApplicationController
  before_action :current_user_is_employee?, only: [:index, :create, :show, :destroy]
  before_action :customer_all, only: [:index, :create]
  before_action :customer_new, only: [:index, :show, :destroy]
  before_action :customer_show, only: [:show, :destroy]

  def index
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :index
    end
  end

  def show
  end

  def destroy
    if @customer_show.destroy
      redirect_to customers_path
    else
      render :show
    end
  end

  private

  # ストロングパラメーター
  def customer_params
    params.require(:customer).permit(:order_date, :store_id, :name, :name_kana, :phone, :email, :employee_id, :address_zip, :address,
                                     :residence_zip, :residence, :status_id)
  end

  # 顧客情報を全て取得
  def customer_all
    @customers = Customer.all
  end

  # 顧客インスタンス生成
  def customer_new
    @customer = Customer.new
  end

  # 顧客詳細ページ用インスタンス変数
  def customer_show
    @comment = Comment.new
    @meeting = Meeting.new
    @construction = Construction.new
    @customer_show = Customer.find(params[:id])
    @comments = @customer_show.comments.includes(:employee)
    @meeting_show = @customer_show.meeting
    @construction_show = @customer_show.construction
  end

  # ログインユーザーが社員でなければroot_pathへリダイレクトされる
  def current_user_is_employee?
    redirect_to root_path if worker_signed_in? && !employee_signed_in?
  end
end
