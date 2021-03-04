class ChatsController < ApplicationController
  before_action :current_user_is_employee?, only: [:create, :update]
  before_action :chat_new, only: [:index, :show, :update]
  before_action :chat_find, only: [:show, :update, :destroy]
  before_action :message_new, only: [:show, :update]
  before_action :message_find, only: [:show, :update]
  before_action :task_find, only: [:show, :update]

  def index
  end

  def create
    @chat = Chat.new(chat_params)
    if @chat.save
      redirect_to chats_path
    else
      render :index
    end
  end

  def show
    @task = Task.new
  end

  def update
    if @chat_show.update(chat_params)
      redirect_to chat_path(@chat_show)
    else
      render :show
    end
  end

  def destroy
    if @chat_show.destroy
      redirect_to chats_path
    else
      render :show
    end
  end

  private

  # ストロングパラメーター
  def chat_params
    params.require(:chat).permit(:title, { employee_ids: [] }, { worker_ids: [] })
  end

  # チャットインスタンス生成
  def chat_new
    @chat = Chat.new
  end

  # メッセージインスタンス生成
  def message_new
    @message = Message.new
  end

  # チャットデータ取得
  def chat_find
    @chat_show = Chat.find(params[:id])
  end

  # チャット別のメッセージデータ取得
  def message_find
    @messages = @chat_show.messages.with_attached_message_images.includes(wordable: [face_image_attachment: [:blob]])
  end

  def task_find
    @tasks = @chat_show.tasks.includes(:client, :pic)
  end

  # ログインユーザーが社員でなければroot_pathへリダイレクトされる
  def current_user_is_employee?
    redirect_to root_path if worker_signed_in? && !employee_signed_in?
  end
end
