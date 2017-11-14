class CitiesController < ApplicationController
  before_action :find_city, only: %i[show edit update destroy]
  before_action :find_country, only: [:create]

  def index
    @cities = City.paginate(:page => params[:page], :per_page => 1)
  end

  def new
    @city = City.new
  end

  def create
    @city = @country.cities.create(city_params)

    redirect_to country_cities_path(@country)
  end

  def show; end

  def edit; end

  def update
    @city.update(city_params)

    redirect_to city_path
  end

  def destroy
    @city.destroy

    redirect_to country_cities_path(@city.country)
  end

  private

  def find_city
    @city = City.find(params[:id])
  end

  def find_country
    @country = Country.find(params[:country_id])
  end

  def city_params
    params.require(:city).permit(:name, :avatar, :country_id)
  end
end
