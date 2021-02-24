class ConstructionsController < ApplicationController
  before_action :current_user_is_employee?, only: [:create, :update, :destroy]
  before_action :customer_new, only: [:create, :update, :destroy]
  before_action :customer_show, only: [:update, :destroy]

  def create
    @construction = Construction.new(construction_params)
    @customer_show = Customer.find(params[:customer_id])
    @comments = @customer_show.comments.includes(:employee)
    @meeting_show = @customer_show.meeting
    @construction_show = @customer_show.construction
    if @construction.save
      redirect_to customer_path(params[:customer_id])
    else
      render 'customers/show'
    end
  end

  def update
    if @construction_show.update(construction_params)
      redirect_to customer_path(@customer_show.id)
    else
      render 'customers/show'
    end
  end

  def destroy
    if @construction_show.destroy
      redirect_to customer_path(@customer_show.id)
    else
      render 'customers/show'
    end
  end

  private

  # ストロングパラメーター
  def construction_params
    params.require(:construction).permit(:construction_datetime, :completion_date,
                                         :worker_id).merge(customer_id: params[:customer_id])
  end

  # 顧客詳細ページ用インスタンス変数
  def customer_new
    @customer = Customer.new
    @comment = Comment.new
    @meeting = Meeting.new
  end

  # update,destroy用インスタンス変数
  def customer_show
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
