class Ticket < ApplicationRecord
  include ConcertsHelper
  belongs_to :concert

  before_create :fill_zone, :fill_price
  after_create :hide_concert

  def fill_zone
    self.zone = Concert::SEATS.find {|k, v| v.include?(seat) }.first
  end

  def fill_price
    self.price = concert["price_#{zone}"]
  end

  def hide_concert
    if available_seats(concert).blank?
      concert.update(status: 'sold_out')
    end
  end
end
