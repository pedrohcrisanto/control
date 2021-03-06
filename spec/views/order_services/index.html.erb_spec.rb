require 'rails_helper'

RSpec.describe "order_services/index", type: :view do
  before(:each) do
    assign(:order_services, [
      OrderService.create!(
        :service => rand(1..5),
        :amount => 2,
        :employee => "Employee",
        :detail => "MyText",
        :user => rand(1..5),
        :totalvalue => "9.99",
        :liquidvalue => "9.99",
        :discount => "9.99"
      ),
      OrderService.create!(
        :service => rand(1..5),
        :amount => 2,
        :employee => "Employee",
        :detail => "MyText",
        :user => rand(1..5),
        :totalvalue => "9.99",
        :liquidvalue => "9.99",
        :discount => "9.99"
      )
    ])
  end

  it "renders a list of order_services" do
    render
    assert_select "tr>td", :text => rand(1..5).to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Employee".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => rand(1..5).to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
