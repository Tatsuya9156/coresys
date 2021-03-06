class EmployeesController < ApplicationController
  before_action :updatable?, only: [:edit, :update]
  before_action :employee_find, only: [:edit, :update]
  before_action :search_employee, only: [:index, :search]
  before_action :set_employee_column, only: [:index, :search]

  def index
    @employees = Employee.with_attached_face_image.order(employee_number: "ASC")
  end

  def search
    @results = @e.result.with_attached_face_image
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to employees_path
    else
      render :edit
    end
  end

  private

  # ストロングパラメーター
  def employee_params
    params.require(:employee).permit(:face_image, :employee_number, :name, :name_kana, :section, :position, :phone, :admin, :email,
                                     :password)
  end

  # 社員データ取得
  def employee_find
    @employee = Employee.find(params[:id])
  end

  # 検索オブジェクトの生成
  def search_employee
    @e = Employee.ransack(params[:q])
  end

  # 重複なくカラムのデータを取得する
  def set_employee_column
    @employee_section = Employee.select("section").distinct
    @employee_position = Employee.select("position").distinct
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
