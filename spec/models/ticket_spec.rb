require 'rails_helper'

RSpec.describe Ticket, type: :model do
  context 'test callback' do
    before(:each) do
      @concert = create(:concert)
    end

    it "before create fill zone" do

      ticket = Ticket.create(concert_id: @concert.id, seat: 4)
      expect(ticket.zone).not_to be_blank
    end

    it "before create fill price" do
      ticket = Ticket.create(concert_id: @concert.id, seat: 6)
      expect(ticket.price).not_to be_blank
      expect(ticket.price).to eq(@concert["price_#{ticket.zone}"])
    end
  end
end
