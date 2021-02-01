class MessagesController < ApplicationController

  def create
    if employee_signed_in?
      @message = Message.new(employee_message_params)
      if @message.save
        redirect_to chat_path(params[:chat_id])
      else
        @chat = Chat.find(params[:chat_id])
        render "chats/show"
      end
    elsif worker_signed_in?
      @message = Message.new(worker_message_params)
      if @message.save
        redirect_to chat_path(params[:chat_id])
      else
        @chat = Chat.find(params[:chat_id])
        render "chats/show"
      end
    end
  end
  
  private
  def employee_message_params
    params.require(:message).permit(:text, message_images: []).merge(employee_id: current_employee.id, chat_id: params[:chat_id])
  end

  def worker_message_params
    params.require(:message).permit(:text, message_images: []).merge(worker_id: current_worker.id, chat_id: params[:chat_id])
  end

end
