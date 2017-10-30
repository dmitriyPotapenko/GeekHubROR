class AccidentsController < ApplicationController
  before_action :find_accident, only: [:show, :edit, :update, :destroy]

  def index
    @accidents = Accident.all
  end

  def new
    @accident = Accident.new
  end

  def create
    Accident.create(accident_params)

    redirect_to accidents_path
  end

  def show
  end

  def edit
  end

  def update
    @accident.update(accident_params)

    redirect_to accidents_path
  end

  def destroy
    @accident.destroy

    redirect_to accidents_path
  end

  private

  def find_accident
    @accident = Accident.find(params[:id])
  end

  def accident_params
    params.require(:accident).permit(:city, :category, :victims)
  end
end
