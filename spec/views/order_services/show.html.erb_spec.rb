require 'rails_helper'

RSpec.describe "order_services/show", type: :view do
  before(:each) do
    @order_service = assign(:order_service, OrderService.create!(
      :service => rand(1..5),
      :amount => 2,
      :employee => "Employee",
      :detail => "MyText",
      :user => rand(1..5),
      :totalvalue => "9.99",
      :liquidvalue => "9.99",
      :discount => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Employee/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
