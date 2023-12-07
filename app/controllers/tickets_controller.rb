class TicketsController < ApplicationController
  before_action :authenticate_user!, only: [:add_to_cart ]
  
  def add_to_cart
    @concert = Concert.find(params[:concert_id])
    @ticket = @concert.tickets.find_by(ticket_params)
    current_user.cart.tickets << @ticket
    current_user.cart.save
    redirect_to concert_path(@concert)
  end 

  def find_ticket
    ticket = Ticket.find_by(number: params[:number])
    if ticket.blank?
      render json: {}
    else
      render json: ticket.attributes.merge('user' => ticket.user)
    end
  end

  private

  def ticket_params
    params.require(:ticket).permit(:seat)
  end

end

  
