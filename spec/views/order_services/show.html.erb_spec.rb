require 'rails_helper'

RSpec.describe "order_services/show", type: :view do
  before(:each) do
    @order_service = assign(:order_service, OrderService.create!(
      :service => nil,
      :amount => 2,
      :employee => "Employee",
      :detail => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Employee/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
