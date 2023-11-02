module ConcertsHelper
  def available_seats(concert)
    Concert::SEATS.values.flatten - concert.tickets.pluck(:seat)
  end
end
