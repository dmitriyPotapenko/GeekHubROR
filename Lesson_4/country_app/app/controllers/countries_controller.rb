class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
    @countries = Country.new
  end

  def create
    @countries = Country.create(params.require(:country).permit(:name, :population))

    redirect_to @countries
  end

  def show
    @country = Country.find(params[:id])
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.update(params.require(:country).permit(:name, :population))

    redirect_to countries_path
  end

  def destroy
    @country = Country.find(params[:id]).destroy

    redirect_to countries_path
  end
end
