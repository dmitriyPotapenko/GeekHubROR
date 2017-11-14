class AirportsController < ApplicationController
  before_action :find_airport, only: %i[show edit update destroy]
  before_action :find_city, only: [:create]
  
  def index
    @airports = Airport.all
  end

  def new
    @airport = Airport.new
  end

  def create
    @airport = @city.airports.create(airport_params)

    redirect_to airport_path(@airport)
  end

  def show; end

  def edit; end

  def update
    @airport.update(airport_params)

    redirect_to airport_path(@airport)
  end

  def destroy
    @airport.destroy

    redirect_to city_path(@airport.city)
  end

  private

  def airport_params
    params.require(:airport).permit(:name, :city_id)
  end

  def find_airport
    @airport = Airport.find(params[:id])
  end

  def find_city
    @city = City.find(params[:city_id])
  end
end
