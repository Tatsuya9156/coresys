class CommentsController < ApplicationController

  def create
    @customer = Customer.new
    @comment = Comment.new(comment_params)
    @customer_show = Customer.find(params[:customer_id])
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

end
