require 'rails_helper'

RSpec.describe "services/index", type: :view do
  before(:each) do
    assign(:services, [
      Service.create!(
        :name => "Name",
        :description => "MyText",
        :price => "9.99",
        :user => rand(1..5)
      ),
      Service.create!(
        :name => "Name",
        :description => "MyText",
        :price => "9.99",
        :user => rand(1..5)
      )
    ])
  end

  it "renders a list of services" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => rand(1..5).to_s, :count => 2
  end
end
