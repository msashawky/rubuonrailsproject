require 'rails_helper'

RSpec.describe "charities/new", :type => :view do
  before(:each) do
    assign(:charity, Charity.new(
      :charity_field => "MyString"
    ))
  end

  it "renders new charity form" do
    render

    assert_select "form[action=?][method=?]", charities_path, "post" do

      assert_select "input#charity_charity_field[name=?]", "charity[charity_field]"
    end
  end
end
