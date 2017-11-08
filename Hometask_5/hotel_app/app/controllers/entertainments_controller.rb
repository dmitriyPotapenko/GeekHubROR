class EntertainmentsController < ApplicationController
  before_action :find_entertainment, only: %i[show edit update destroy]
  before_action :find_hotel, only: [:create]

  def index
    @entertainments = Entertainment.all
  end

  def new
    @entertainment = Entertainment.new
  end

  def create
    @entertainment = @hotel.entertainments.create(entertainment_params)

    redirect_to hotel_entertainments_path
  end

  def show; end

  def edit; end

  def update
    @entertainment.update(entertainment_params)

    redirect_to entertainment_path(@entertainment)
  end

  def destroy
    @entertainment.destroy

    redirect_to entertainment_path
  end

  private

  def find_entertainment
    @entertainment = Entertainment.find(params[:id])
  end

  def find_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end

  def entertainment_params
    params.require(:entertainment).permit(:kind_of, :hotel_id)
  end
end
