require 'rails_helper'

RSpec.describe "charities/show", :type => :view do
  before(:each) do
    @charity = assign(:charity, Charity.create!(
      :charity_field => "Charity Field"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Charity Field/)
  end
end
