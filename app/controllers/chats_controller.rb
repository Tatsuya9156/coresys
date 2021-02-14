class ChatsController < ApplicationController
  def index
    @chat = Chat.new
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to index
    else
      render :index
    end
  end

  def show
    @chat = Chat.new
    @chat_show = Chat.find(params[:id])
    @message = Message.new
    @messages = @chat_show.messages.includes(:employee, :worker)
  end

  def update
    @chat = Chat.new
    @chat_show = Chat.find(params[:id])
    @message = Message.new
    @messages = @chat_show.messages.includes(:employee, :worker)
    if @chat_show.update(chat_params)
      redirect_to chat_path(@chat_show)
    else
      render :show
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:title, { employee_ids: [] }, { worker_ids: [] })
  end
end
