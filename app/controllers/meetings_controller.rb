class MeetingsController < ApplicationController
  def create
    @customer = Customer.new
    @comment = Comment.new
    @meeting = Meeting.new(meeting_params)
    @customer_show = Customer.find(params[:customer_id])
    @meeting_show = @customer_show.meeting
    @construction_show = @customer_show.construction
    @comments = @customer_show.comments.includes(:employee)
    if @meeting.save
      redirect_to customer_path(params[:customer_id])
    else
      render 'customers/show'
    end
  end

  def update
  end

  private

  # ストロングパラメーター
  def meeting_params
    params.require(:meeting).permit(:meeting_datetime, :worker_id).merge(customer_id: params[:customer_id])
  end
end
