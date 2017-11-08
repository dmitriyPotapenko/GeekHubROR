class CitiesController < ApplicationController
  before_action :find_city, only: %i[show edit update destroy]
  before_action :find_country, only: [:create]

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = @country.cities.create(city_params)

    redirect_to countries_path
  end

  def show; end

  def edit; end

  def update
    @city.update(city_params)

    redirect_to city_path(@city)
  end

  def destroy
    @city.destroy

    redirect_to country_path(@city.country)
  end

  private

  def city_params
    params.require(:city).permit(:name, :country_id)
  end

  def find_city
    @city = City.find(params[:id])
  end

  def find_country
    @country = Country.find(params[:country_id])
  end
end
