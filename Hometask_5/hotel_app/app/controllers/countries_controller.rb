class CountriesController < ApplicationController
  before_action :find_continent, only: [:create]

  def index
    @countries = Country.paginate(page: params[:page], per_page: 1)
  end

  def show
    @country = Country.find(params[:id])
  end

  private

  def find_continent
    @continent = Continent.find(params[:continent_id])
  end
end
