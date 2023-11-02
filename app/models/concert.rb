class Concert < ApplicationRecord
  has_many :tickets

  # TODO: вынести в отдельную модель
  SEATS = { balcony: [1, 2, 3, 4, 5], amphitheater: [6, 7, 8, 9, 10], ground_floor: [11, 12, 13] }

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :price_balcony, numericality: { less_than: :price_amphitheater }
  validates :price_amphitheater, numericality: { greater_than: :price_balcony, less_than: :price_ground_floor }
  validates :price_ground_floor, numericality: { greater_than: :price_amphitheater  }
end
