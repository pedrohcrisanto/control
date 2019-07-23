require 'rails_helper'

RSpec.describe "order_services/index", type: :view do
  before(:each) do
    assign(:order_services, [
      OrderService.create!(
        :service => nil,
        :amount => 2,
        :employee => "Employee",
        :detail => "MyText",
        :user => nil
      ),
      OrderService.create!(
        :service => nil,
        :amount => 2,
        :employee => "Employee",
        :detail => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of order_services" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Employee".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
