class TouristsController < ApplicationController
  before_action :find_tourist, only: %i[show edit update destroy]
  before_action :find_hotel, only: [:create]

  def index
    @tourists = Tourist.all
  end

  def new
    @tourist = Tourist.new
  end

  def create
    @tourist = @hotel.tourists.create(tourist_params)

    redirect_to hotel_tourists_path
  end

  def show; end

  def edit; end

  def update
    @tourist.update(tourist_params)

    redirect_to hotel_tourists_path
  end

  def destroy
    @tourist.destroy

    redirect_to hotel_tourists_path
  end

  private

  def find_tourist
    @tourist = Tourist.find(params[:id])
  end

  def find_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def tourist_params
    params.require(:tourist).permit(:first_name, :second_name, :hotel_id)
  end
end
