class ChatsController < ApplicationController
  def index

  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to root_path
    else
      render :new
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