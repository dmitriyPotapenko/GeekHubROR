class EntertainmentsController < ApplicationController
  before_action :find_entertainment, only: %i[show edit update destroy]
  before_action :find_hotel, only: [:create]

  def index
    @entertainments = Entertainment.all
  end

  def show; end

  private

  def find_entertainment
    @entertainment = Entertainment.find(params[:id])
  end

  def find_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end
end
