class PlanesController < ApplicationController
  before_action :find_plane, only: %i[show edit update destroy]
  before_action :find_airport, only: [:create]

  def index
    @planes = Plane.all
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = @airport.planes.create(plane_params)

    redirect_to plane_path(@plane)
  end

  def show; end

  def edit; end

  def update
    @plane.update(plane_params)

    redirect_to planes_path(@planes)
  end

  def destroy
    @plane.destroy

    redirect_to airport_planes_path(:airport_id)
  end

  private

  def find_plane
    @plane = Plane.find(params[:id])
  end

  def find_airport
    @airport = Airport.find(params[:airport_id])
  end

  def plane_params
    params.require(:plane).permit(:name, :airport_id)
  end
end
