class Admin::HotelsController < Admin::ApplicationController
  before_action :find_hotel, only: %i[show edit update destroy]
  before_action :find_city, only: [:create]

  def index
    @hotels = Hotel.paginate(page: params[:page], per_page: 1)
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = @city.hotels.create(hotel_params)

    redirect_to admin_city_hotels_path
  end

  def show; end

  def edit; end

  def update
    @hotel.update(hotel_params)

    redirect_to admin_hotel_path(@hotel)
  end

  def destroy
    @hotel.destroy

    redierct_to admin_city_path(@hotel.city)
  end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def find_city
    @city = City.find(params[:city_id])
  end

  def hotel_params
    params.require(:hotel).permit(:name, :avatar, :city_id)
  end
end
