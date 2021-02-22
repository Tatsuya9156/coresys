class MessagesController < ApplicationController
  def create
    @message = Message.new(employee_message_params) if employee_signed_in?
    @message = Message.new(worker_message_params) if worker_signed_in?
    @chat_show = Chat.find(params[:chat_id])
    @messages = @chat_show.messages.with_attached_message_images.includes(:employee, :worker)
    if @message.save
      redirect_to chat_path(params[:chat_id])
    else
      render 'chats/show'
    end
  end

  private

  # ストロングパラメーター(社員の場合)
  def employee_message_params
    params.require(:message).permit(:text, message_images: []).merge(employee_id: current_employee.id, chat_id: params[:chat_id])
  end

  # ストロングパラメーター(職人の場合)
  def worker_message_params
    params.require(:message).permit(:text, message_images: []).merge(worker_id: current_worker.id, chat_id: params[:chat_id])
  end
end
