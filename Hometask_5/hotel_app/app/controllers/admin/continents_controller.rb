class Admin::ContinentsController < Admin::ApplicationController
  before_action :find_continent, only: %i[show edit update destroy]

  def index
    @continents = Continent.paginate(page: params[:page], per_page: 1)
  end

  def new
    @continent = Continent.new
  end

  def create
    @continent = Continent.create(continent_params)

    redirect_to admin_continents_path
  end

  def show; end

  def edit; end

  def update
    @continent.update(continent_params)

    redirect_to admin_continents_path
  end

  def destroy
    @continent.destroy

    redirect_to admin_continents_path
  end

  private

  def find_continent
    @continent = Continent.find(params[:id])
  end

  def continent_params
    params.require(:continent).permit(:name, :avatar)
  end
end
