require 'rails_helper'

RSpec.describe "order_services/edit", type: :view do
  before(:each) do
    @order_service = assign(:order_service, OrderService.create!(
      :service => nil,
      :amount => 1,
      :employee => "MyString",
      :detail => "MyText",
      :user => nil
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
    end
  end
end
