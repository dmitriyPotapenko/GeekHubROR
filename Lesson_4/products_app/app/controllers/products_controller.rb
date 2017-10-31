class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @products = Product.new
  end

  def create
    Product.create(product_params)

    redirect_to products_path
  end

  def update
    @products.update(product_params)

    redirect_to products_path
  end

  def edit
  end

  def show
  end

  def destroy
    @products.destroy

    redirect_to products_path
  end

  private

  def find_product
    @products = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :amount, :price)
  end
end
