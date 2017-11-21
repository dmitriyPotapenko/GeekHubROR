class HotelsController < ApplicationController
  before_action :find_hotel, only: %i[show edit update destroy]
  before_action :find_city, only: [:create]

  def index
    @hotels = Hotel.paginate(page: params[:page], per_page: 1)
  end

  def show; end

  private

  def find_hotel
    @hotel = Hotel.find(params[:id])
  end

  def find_city
    @city = City.find(params[:city_id])
  end
end
