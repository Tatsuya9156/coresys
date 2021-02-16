class ConstructionsController < ApplicationController
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

  private

  # ストロングパラメーター
  def construction_params
    params.require(:construction).permit(:construction_datetime, :completion_date,
                                         :worker_id).merge(customer_id: params[:customer_id])
  end
end
