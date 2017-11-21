class EmployeesController < ApplicationController
  before_action :find_employee, only: %i[show edit update destroy]
  before_action :find_position, only: [:create]

  def index
    @employees = Employee.all
  end

  def show; end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def find_position
    @position = Position.find(params[:position_id])
  end
end
