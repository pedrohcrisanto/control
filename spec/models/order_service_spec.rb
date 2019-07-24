require 'rails_helper'

RSpec.describe OrderService, type: :model do
  describe 'model order_service test' do
    it 'it true' do
      order_service = FactoryBot.build(:order_service)
      expect(order_service).to be_valid
    end
  end
end
