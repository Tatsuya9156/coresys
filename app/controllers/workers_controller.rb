class WorkersController < ApplicationController
  before_action :updatable?, only: [:edit, :update]

  def index
    @workers = Worker.all
  end

  def edit
    @worker = Worker.find(params[:id])
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update(worker_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def worker_params
    params.require(:worker).permit(:face_image, :worker_number, :name, :name_kana, :trade_name, :phone, :email, :password, :address_zip,
                                   :address, :warehouse_zip, :warehouse, :warehouse_info, :inaba, :yodo, :takubo, :ykkap, :sankyo, :lixil)
  end

  # 管理者権限を持っている
  def current_employee_is_admin?
    worker_signed_in? == false && current_employee.admin == true
  end

  # 管理者権限を持つ社員でなければroot_pathへリダイレクトされる
  def updatable?
    redirect_to root_path if !current_employee_is_admin?
  end

end
