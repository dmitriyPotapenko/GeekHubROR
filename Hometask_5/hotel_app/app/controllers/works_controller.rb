class WorksController < ApplicationController
  before_action :find_work, only: %i[show edit update destroy]
  before_action :find_employee, only: [:create]

  def index
    @works = Work.all
  end

  def show; end

  private

  def find_work
    @work = Work.find(params[:id])
  end

  def find_employee
    @employee = Employee.find(params[:employee_id])
  end
end
