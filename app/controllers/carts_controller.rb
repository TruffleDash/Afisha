class CartsController < ApplicationController
  def show
    @cart = current_user.cart
  end

  def buy_ticket
    current_user.cart.tickets.each do |ticket|
      ticket.status = 'sold'
      ticket.cart_items.destroy_all
      ticket.user = current_user
      ticket.save
    end
    redirect_to cart_path(current_user.cart.id)
  end

  def delete_ticket
    ticket = Ticket.find(params[:cart][:ticket_id])
    ticket.status = 'avaliable'
    ticket.cart_items.destroy_all
    ticket.save
    redirect_to cart_path(current_user.cart.id)
  end
end

