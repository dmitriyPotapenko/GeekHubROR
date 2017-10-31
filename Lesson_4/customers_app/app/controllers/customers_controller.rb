class CustomersController < ApplicationController
  before_action :find_customer, only: %i[show edit update destroy]

  def index
    @customers = Customer.all
  end

  def new
    @customers = Customer.new
  end

  def create
    Customer.create(customer_params)

    redirect_to customers_path
  end

  def show
  end

  def edit
  end

  def update
    @customers.update(customer_params)

    redirect_to customers_path
  end

  def destroy
    @customers.destroy

    redirect_to customers_path
  end

  private

  def find_customer
    @customers = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :product, :price)
  end
end
