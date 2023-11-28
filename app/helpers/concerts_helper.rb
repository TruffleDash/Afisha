module ConcertsHelper
  def available_seats(concert)
    Concert::SEATS.values.flatten - concert.tickets.left_outer_joins(:cart_items).where(
      "tickets.status = ? OR cart_items.created_at > ?", "sold", 20.minutes.ago).pluck(:seat)
  end
end
