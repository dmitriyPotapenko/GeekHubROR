class TicketsController < ApplicationController
  before_action :find_ticket, only: %i[show edit update destroy]
  before_action :find_passanger, only: [:create]
  before_action :authenticate_user!, only: %i[new edit update destroy]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = @passanger.tickets.create(ticket_params)

    redirect_to passanger_tickets_path(:passanger_id)
  end

  def show; end

  def edit; end

  def update
    @ticket.update(ticket_params)

    redirect_to passanger_tickets_path(:passanger_id)
  end

  def destroy
    @ticket.destroy

    redirect_to passanger_tickets_path(:passanger_id)
  end

  private

  def find_ticket
    @ticket = Ticket.find(params[:id])
  end

  def find_passanger
    @passanger = Passanger.find(params[:passanger_id])
  end

  def ticket_params
    params.require(:ticket).permit(:name, :passanger_id)
  end
end
