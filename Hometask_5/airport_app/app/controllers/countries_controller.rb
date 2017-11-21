class CountriesController < ApplicationController
  before_action :find_country, only: %i[show edit update destroy]
  before_action :authenticate_user!, only: %i[new edit update destroy]

  def index
    @countries = Country.paginate(page: params[:page], per_page: 1)
  end

  def new
    @countries = Country.new
  end

  def create
    Country.create(country_params)

    redirect_to countries_path
  end

  def show; end

  def edit; end

  def update
    @country.update(country_params)

    redirect_to countries_path
  end

  def destroy
    @country.destroy

    redirect_to countries_path
  end

  private

  def find_country
    @country = Country.find(params[:id])
  end

  def country_params
    params.require(:country).permit(:name, :avatar)
  end
end
