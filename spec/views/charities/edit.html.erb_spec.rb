require 'rails_helper'

RSpec.describe "charities/edit", :type => :view do
  before(:each) do
    @charity = assign(:charity, Charity.create!(
      :charity_field => "MyString"
    ))
  end

  it "renders the edit charity form" do
    render

    assert_select "form[action=?][method=?]", charity_path(@charity), "post" do

      assert_select "input#charity_charity_field[name=?]", "charity[charity_field]"
    end
  end
end
