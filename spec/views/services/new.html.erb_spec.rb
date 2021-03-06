require 'rails_helper'

RSpec.describe "services/new", type: :view do
  before(:each) do
    assign(:service, Service.new(
      :name => "MyString",
      :description => "MyText",
      :price => "9.99",
      :user => rand(1..5)
    ))
  end

  it "renders new service form" do
    render

    assert_select "form[action=?][method=?]", services_path, "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "textarea[name=?]", "service[description]"

      assert_select "input[name=?]", "service[price]"

      assert_select "input[name=?]", "service[user_id]"
    end
  end
end
