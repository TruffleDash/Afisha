require 'rails_helper'

RSpec.describe Concert, type: :model do
  context 'test validations' do
    it 'should be invalid if doesnt have params' do
      concert = Concert.new
      expect(concert).to be_invalid
    end

    it 'should be valid if has params' do
      concert = Concert.new(title: '1', body: '11111111111111111111111111', price_balcony: 1, price_amphitheater: 2, price_ground_floor: 3)

      expect(concert).to be_valid
    end
  end
end
