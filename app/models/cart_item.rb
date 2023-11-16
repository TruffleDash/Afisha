class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :ticket

  def expired?
    Time.current > (self.created_at + 20.minutes)
  end

  def self.clear_expired_reservations
    where('created_at < ?', 20.minutes.ago).destroy_all
  end
end
