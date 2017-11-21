class CitiesController < ApplicationController
  before_action :find_city, only: %i[show edit update destroy]
  before_action :find_country, only: [:create]

  def index
    @cities = City.paginate(page: params[:page], per_page: 1)
  end

  def show; end

  private

  def find_city
    @city = City.find(params[:id])
  end

  def find_country
    @country = Country.find(params[:country_id])
  end
end
