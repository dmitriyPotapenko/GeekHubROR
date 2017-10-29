class WorkersController < ApplicationController
  before_action :find_worker, only: %i[show edit update destroy]

  def index
    @workers = Worker.all
  end

  def new
    @workers = Worker.new
  end

  def create
    Worker.create(params.require(:worker).permit(:name, :post))

    redirect_to workers_path
  end

  def show
  end

  def edit
  end

  def update
    @worker.update(params.require(:worker).permit(:name, :post))

    redirect_to workers_path
  end

  def destroy
    @worker.destroy

    redirect_to workers_path
  end

  private

  def find_worker
    @worker = Worker.find(params[:id])
  end
end
