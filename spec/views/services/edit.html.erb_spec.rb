require 'rails_helper'

RSpec.describe "services/edit", type: :view do
  before(:each) do
    @service = assign(:service, Service.create!(
      :name => "MyString",
      :description => "MyText",
      :price => "9.99",
      :user => rand(1..5)
    ))
  end

  it "renders the edit service form" do
    render

    assert_select "form[action=?][method=?]", service_path(@service), "post" do

      assert_select "input[name=?]", "service[name]"

      assert_select "textarea[name=?]", "service[description]"

      assert_select "input[name=?]", "service[price]"

      assert_select "input[name=?]", "service[user_id]"
    end
  end
end
