class EmployeesController < ApplicationController
  before_action :updatable?, only: [:edit, :update]

  def index
    @employees = Employee.all
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:face_image, :employee_number, :name, :name_kana, :section, :position, :phone, :admin, :email,
                                     :password)
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
