class CountriesController < ApplicationController
  before_action :find_country, only: %i[show edit update destroy]
  before_action :find_continent, only: [:create]

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = @continent.countries.create(country_params)

    redirect_to continent_countries_path(@continent)
  end

  def show; end

  def edit; end

  def update
    @country.update(country_params)

    redirect_to country_path
  end

  def destroy
    @country.destroy

    redirect_to continent_countries_path(@continent)
  end

  private

  def find_country
    @country = Country.find(params[:id])
  end

  def find_continent
    @continent = Continent.find(params[:continent_id])
  end

  def country_params
    params.require(:country).permit(:name, :continent_id)
  end
end
