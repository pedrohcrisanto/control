require 'rails_helper'

RSpec.describe "order_services/new", type: :view do
  before(:each) do
    assign(:order_service, OrderService.new(
      :service => nil,
      :amount => 1,
      :employee => "MyString",
      :detail => "MyText",
      :user => nil,
      :totalvalue => "9.99",
      :liquidvalue => "9.99",
      :discount => "9.99"
    ))
  end

  it "renders new order_service form" do
    render

    assert_select "form[action=?][method=?]", order_services_path, "post" do

      assert_select "input[name=?]", "order_service[service_id]"

      assert_select "input[name=?]", "order_service[amount]"

      assert_select "input[name=?]", "order_service[employee]"

      assert_select "textarea[name=?]", "order_service[detail]"

      assert_select "input[name=?]", "order_service[user_id]"

      assert_select "input[name=?]", "order_service[totalvalue]"

      assert_select "input[name=?]", "order_service[liquidvalue]"

      assert_select "input[name=?]", "order_service[discount]"
    end
  end
end
