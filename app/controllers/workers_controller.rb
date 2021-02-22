class WorkersController < ApplicationController
  before_action :updatable?, only: [:edit, :update]
  before_action :worker_find, only: [:edit, :update]

  def index
    @workers = Worker.with_attached_face_image
  end

  def edit
  end

  def update
    if @worker.update(worker_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  # ストロングパラメーター
  def worker_params
    params.require(:worker).permit(:face_image, :worker_number, :name, :name_kana, :trade_name, :phone, :email, :password, :address_zip,
                                   :address, :warehouse_zip, :warehouse, :warehouse_info, :inaba, :yodo, :takubo, :ykkap, :sankyo, :lixil)
  end

  # 職人データ取得
  def worker_find
    @worker = Worker.find(params[:id])
  end

  # 管理者権限を持っている
  def current_employee_is_admin?
    worker_signed_in? == false && current_employee.admin == true
  end

  # 管理者権限を持つ社員でなければroot_pathへリダイレクトされる
  def updatable?
    redirect_to root_path unless current_employee_is_admin?
  end
end
