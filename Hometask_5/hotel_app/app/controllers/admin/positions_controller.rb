class Admin::PositionsController < Admin::ApplicationController
  before_action :find_position, only: %i[show edit update destroy]
  before_action :find_hotel, only: [:create]

  def index
    @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def create
    @position = @hotel.positions.create(position_params)

    redirect_to admin_hotel_positions_path
  end

  def show; end

  def edit; end

  def update
    @position.update(position_params)

    redirect_to admin_position_path(@position)
  end

  def destroy
    @position.destroy

    redirect_to admin_positions_path
  end

  private

  def find_position
    @position = Position.find(params[:id])
  end

  def find_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def position_params
    params.require(:position).permit(:name, :hotel_id)
  end
end
