class PositionsController < ApplicationController
  before_action :find_position, only: %i[show edit update destroy]
  before_action :find_hotel, only: [:create]

  def index
    @positions = Position.all
  end

  def show; end

  private

  def find_position
    @position = Position.find(params[:id])
  end

  def find_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end
end
