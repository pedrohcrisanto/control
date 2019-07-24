require 'rails_helper'

RSpec.describe Service, type: :model do
  describe 'model service test' do
    it 'it true' do
      service = FactoryBot.build(:service)
      expect(service).to be_valid
    end
  end
end
