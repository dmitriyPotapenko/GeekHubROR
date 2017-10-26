class CatsController < ApplicationController

	def index
    @cats = Cat.all  
  end

  def new
  	@cats = Cat.new
  end

  def create 
  	@cats = Cat.create(params.require(:cat).permit(:name, :age))

  	redirect_to @cats
  end

  def show
  	@cat = Cat.find(params[:id])
  end

  def edit
  	@cat = Cat.find(params[:id])
  end

  def update
  	@cat = Cat.update(params.require(:cat).permit(:name, :age))

  	redirect_to cats_path
  end

  def destroy
  	@cat = Cat.find(params[:id]).destroy

 		redirect_to cats_path
  end

end	