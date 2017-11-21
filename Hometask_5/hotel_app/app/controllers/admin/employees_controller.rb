class Admin::EmployeesController < Admin::ApplicationController
  before_action :find_employee, only: %i[show edit update destroy]
  before_action :find_position, only: [:create]

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = @position.employees.create(employee_params)

    redirect_to admin_position_employees_path
  end

  def show; end

  def edit; end

  def update
    @employee.update(employee_params)

    redirect_to admin_employee_path(@employee)
  end

  def destroy
    @employee.destroy

    redirect_to admin_employee_path(@employee.position)
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def find_position
    @position = Position.find(params[:position_id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :avatar, :second_name, :position_id)
  end
end
