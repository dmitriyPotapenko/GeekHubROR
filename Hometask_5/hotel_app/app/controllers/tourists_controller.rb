class TouristsController < ApplicationController
  before_action :find_tourist, only: %i[show edit update destroy]
  before_action :find_hotel, only: [:create]

  def index
    @tourists = Tourist.all
  end

  def show; end

  private

  def find_tourist
    @tourist = Tourist.find(params[:id])
  end

  def find_hotel
    @hotel = Hotel.find(params[:hotel_id])
  end
end
