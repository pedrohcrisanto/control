require 'rails_helper'

RSpec.describe "order_services/edit", type: :view do
  before(:each) do
    @order_service = assign(:order_service, OrderService.create!(
      :service => rand(1..5),
      :amount => 1,
      :employee => "MyString",
      :detail => "MyText",
      :user => rand(1..5),
      :totalvalue => "9.99",
      :liquidvalue => "9.99",
      :discount => "9.99"
    ))
  end

  it "renders the edit order_service form" do
    render

    assert_select "form[action=?][method=?]", order_service_path(@order_service), "post" do

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
