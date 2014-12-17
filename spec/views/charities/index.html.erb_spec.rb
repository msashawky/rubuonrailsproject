require 'rails_helper'

RSpec.describe "charities/index", :type => :view do
  before(:each) do
    assign(:charities, [
      Charity.create!(
        :charity_field => "Charity Field"
      ),
      Charity.create!(
        :charity_field => "Charity Field"
      )
    ])
  end

  it "renders a list of charities" do
    render
    assert_select "tr>td", :text => "Charity Field".to_s, :count => 2
  end
end
