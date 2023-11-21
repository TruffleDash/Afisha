class TicketMailer < ApplicationMailer
  default from: "info.truffle.dash@gmail.com"
  
  def ticket_email
    @user = params[:user]
    @ticket = params[:ticket]
    @concert = params[:concert]
    mail(to: @user.email, subject: 'Thank you for your purchase')
  end

  def ticket_deleted_email
    @concert = params[:concert]
    @concert.tickets.each do |ticket|
      next if ticket.user.blank?
      
      @user = ticket.user
      mail(to: ticket.user.email, subject: 'Ticket canceled')
    end

  end

end
