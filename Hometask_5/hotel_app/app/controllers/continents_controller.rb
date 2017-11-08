class ContinentsController < ApplicationController
  before_action :find_continent, only: %i[show edit update destroy]

  def index
    @continents = Continent.all
  end

  def new
    @continent = Continent.new
  end

  def create
    Continent.create(continent_params)

    redirect_to continents_path
  end

  def show; end

  def edit; end

  def update
    @continent.update(continent_params)

    redirect_to continents_path
  end

  def destroy
    @continent.destroy

    redirect_to continents_path
  end

  private

  def find_continent
    @continent = Continent.find(params[:id])
  end

  def continent_params
    params.require(:continent).permit(:name)
  end
end
