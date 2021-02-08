class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    if @employee.update(employee_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:face_image, :employee_number, :name, :name_kana, :position, :phone, :admin, :email, :password)
  end
end
