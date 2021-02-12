class ChatsController < ApplicationController
  def index
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to chat_path(params[:id])
    else
      render :index
    end
  end

  def show
    @chat = Chat.find(params[:id])
    @message = Message.new
    @messages = @chat.messages.includes(:employee, :worker)
  end

  private

  def chat_params
    params.require(:chat).permit(:title, { employee_ids: [] }, { worker_ids: [] })
  end
end
