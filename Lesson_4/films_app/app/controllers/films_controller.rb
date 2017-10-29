class FilmsController < ApplicationController
  before_action :find_film, only: %i[show edit update destroy]

  def index
    @films = Film.all
  end

  def new
    @films = Film.new
  end

  def create
    Film.create(film_params)

    redirect_to films_path
  end

  def update
    @film.update(film_params)

    redirect_to films_path
  end

  def show
  end

  def edit
  end

  def destroy
    @films.destroy

    redirect_to films_path
  end

  private

  def find_film
    @films = Film.find(params[:id])
  end

  def film_params
    params.require(:film).permit(:name, :year, :producer)
  end
end
