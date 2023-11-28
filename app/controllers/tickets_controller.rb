class TicketsController < ApplicationController
  before_action :authenticate_user!
  
  def add_to_cart
    @concert = Concert.find(params[:concert_id])
    @ticket = @concert.tickets.find_by(ticket_params)
    current_user.cart.tickets << @ticket
    current_user.cart.save
    redirect_to concert_path(@concert)
  end 
  private

  def ticket_params
    params.require(:ticket).permit(:seat)
  end
end
