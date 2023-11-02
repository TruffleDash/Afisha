class TicketsController < ApplicationController
  def new
    @ticket = Ticket.new
  end

  def create
    @concert = Concert.find(params[:concert_id])
    @ticket = @concert.tickets.create(ticket_params)
    redirect_to concert_path(@concert)
  end

  private

  def ticket_params
    params.require(:ticket).permit(:seat)
  end
end
