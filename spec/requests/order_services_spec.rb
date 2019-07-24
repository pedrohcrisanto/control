require 'rails_helper'

RSpec.describe "OrderServices", type: :request do
  describe "GET /order_services" do
    it "works!" do
      get order_services_path
      expect(response).to have_http_status(200)
    end
  end
end
