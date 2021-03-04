class MeetingsController < ApplicationController
  before_action :current_user_is_employee?, only: [:create, :update, :destroy]
  before_action :customer_new, only: [:create, :update, :destroy]
  before_action :customer_show, only: [:update, :destroy]

  def create
    @meeting = Meeting.new(meeting_params)
    @customer_show = Customer.find(params[:customer_id])
    @comments = @customer_show.comments.includes(:employee)
    @meeting_show = @customer_show.meeting
    @construction_show = @customer_show.construction
    if @meeting.save
      redirect_to customer_path(params[:customer_id])
    else
      render 'customers/show'
    end
  end

  def update
    if @meeting_show.update(meeting_params)
      redirect_to customer_path(@customer_show.id)
    else
      render 'customers/show'
    end
  end

  def destroy
    if @meeting_show.destroy
      redirect_to customer_path(@customer_show.id)
    else
      render 'customers/show'
    end
  end

  private

  # ストロングパラメーター
  def meeting_params
    params.require(:meeting).permit(:meeting_datetime, :worker_id).merge(customer_id: params[:customer_id])
  end

  # 顧客詳細ページ用インスタンス変数
  def customer_new
    @customer = Customer.new
    @comment = Comment.new
    @construction = Construction.new
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
