module ConcertsHelper
  def available_seats(concert)
    Concert::SEATS.values.flatten - concert.tickets.joins(cart_items: :cart).where(
      'cart_items.created_at > ? OR carts.user_id IS NOT NULL', 20.minutes.ago
    ).pluck(:seat)
  end
end
