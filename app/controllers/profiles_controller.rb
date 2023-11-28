class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @tickets = @user.tickets
  end

  def return_ticket
    ticket = Ticket.find(params[:ticket_id])
    ticket.update(status: 'avaliable', user_id: nil)
    redirect_to profile_path(current_user.id)
  end

end
