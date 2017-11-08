class WorksController < ApplicationController
  before_action :find_work, only: %i[show edit update destroy]
  before_action :find_employee, only: [:create]

  def index
    @works = Work.all
  end

  def new
    @work = Work.new
  end

  def create
    @work = @employee.works.create(work_params)

    redirect_to employee_works_path
  end

  def show; end

  def edit; end

  def update
    @work.update(work_params)

    redirect_to works_path(@works)
  end

  def destroy
    @work.destroy

    redirect_to work_path
  end

  private

  def find_work
    @work = Work.find(params[:id])
  end

  def find_employee
    @employee = Employee.find(params[:employee_id])
  end

  def work_params
    params.require(:work).permit(:name, :employee_id)
  end
end
