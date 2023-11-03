FactoryBot.define do
  factory :concert do
    title { "1" }
    body { '123123123123' }
    price_balcony { 1 }
    price_amphitheater { 2 }
    price_ground_floor { 3 }
  end
end
