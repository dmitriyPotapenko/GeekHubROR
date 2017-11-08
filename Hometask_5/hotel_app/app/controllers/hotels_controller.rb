class HotelsController < ApplicationController
  before_action :find_hotel, only: %i[show edit update destroy]
  before_action :find_city, only: [:create]

  def index
    @hotels = Hotel.all
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = @city.hotels.create(hotel_params)

    redirect_to city_hotels_path
  end

  def show; end

  def edit; end

  def update
    @hotel.update(hotel_params)

    redirect_to hotel_path(@hotel)
  end

  def destroy
    @hotel.destroy

    redierct_to city_path(@hotel.city)
  end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def find_city
    @city = City.find(params[:city_id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :city_id)
  end
end
