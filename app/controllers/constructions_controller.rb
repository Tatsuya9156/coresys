class ConstructionsController < ApplicationController
  before_action :current_user_is_employee?, only: [:create, :update, :destroy]

  def create
    @customer = Customer.new
    @comment = Comment.new
    @construction = Construction.new(construction_params)
    @customer_show = Customer.find(params[:customer_id])
    @comments = @customer_show.comments.includes(:employee)
    if @construction.save
      redirect_to customer_path(params[:customer_id])
    else
      render 'customers/show'
    end
  end

  def update
  end

  def destroy
    @customer = Customer.new
    @comment = Comment.new
    @meeting = Meeting.new
    @construction = Construction.new
    @customer_show = Customer.find(params[:id])
    @comments = @customer_show.comments.includes(:employee)
    @meeting_show = @customer_show.meeting
    @construction_show = @customer_show.construction
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

  # ログインユーザーが社員でなければroot_pathへリダイレクトされる
  def current_user_is_employee?
    redirect_to root_path if worker_signed_in? && !employee_signed_in?
  end
end
