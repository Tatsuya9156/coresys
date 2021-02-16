class CommentsController < ApplicationController
  before_action :current_user_is_employee?, only: [:create]

  def create
    @customer = Customer.new
    @comment = Comment.new(comment_params)
    @customer_show = Customer.find(params[:customer_id])
    @meeting_show = @customer_show.meeting
    @construction_show = @customer_show.construction
    @comments = @customer_show.comments.includes(:employee)
    if @comment.save
      redirect_to customer_path(params[:customer_id])
    else
      render 'customers/show'
    end
  end

  private

  # ストロングパラメーター
  def comment_params
    params.require(:comment).permit(:text).merge(employee_id: current_employee.id, customer_id: params[:customer_id])
  end

  # ログインユーザーが社員でなければroot_pathへリダイレクトされる
  def current_user_is_employee?
    redirect_to root_path if worker_signed_in? && !employee_signed_in?
  end
end
