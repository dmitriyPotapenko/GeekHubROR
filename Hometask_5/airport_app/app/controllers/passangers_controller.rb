class PassangersController < ApplicationController
  before_action :find_passanger, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new edit update destroy]

  def index
    @passangers = Passanger.all
  end

  def new
    @passangers = Passanger.new
  end

  def create
    Passanger.create(passanger_params)

    redirect_to passangers_path
  end

  def show; end

  def edit; end

  def update
    @passanger.update(passanger_params)

    redirect_to passangers_path
  end

  def destroy
    @passanger.destroy

    redirect_to passangers_path
  end

  private

  def find_passanger
    @passanger = Passanger.find(params[:id])
  end

  def passanger_params
    params.require(:passanger).permit(:first_name, :second_name)
  end
end
