class ContinentsController < ApplicationController
  before_action :find_continent, only: %i[show edit update destroy]

  def index
    @continents = Continent.paginate(page: params[:page], per_page: 1)
  end

  def show; end

  private

  def find_continent
    @continent = Continent.find(params[:id])
  end
end
