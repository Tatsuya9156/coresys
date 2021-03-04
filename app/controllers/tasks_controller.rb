class TasksController < ApplicationController
  before_action :current_user_is_employee?, only: [:create, :destroy]
  before_action :message_new, only: [:create, :destroy]

  def create
    @chat_show = Chat.find(params[:chat_id])
    @messages = @chat_show.messages.with_attached_message_images.includes(wordable: [face_image_attachment: [:blob]])
    @task = Task.new(task_params)
    if @task.save
      redirect_to chat_path(params[:chat_id])
    else
      render 'chats/show'
    end
  end

  def destroy
    @chat_show = Chat.find(params[:id])
    @messages = @chat_show.messages.with_attached_message_images.includes(wordable: [face_image_attachment: [:blob]])
    @task = Task.find(params[:chat_id])
    if @task.destroy
      redirect_to chat_path(params[:id])
    else
      render 'chats/show'
    end
  end

  private

  # ストロングパラメーター
  def task_params
    params.require(:task).permit(:text, :pic_id, :deadline, :done).merge(chat_id: params[:chat_id], client_id: current_employee.id)
  end

  # メッセージインスタンス生成
  def message_new
    @message = Message.new
  end

  # ログインユーザーが社員でなければroot_pathへリダイレクトされる
  def current_user_is_employee?
    redirect_to root_path if worker_signed_in? && !employee_signed_in?
  end
end