require 'rails_helper'
require 'spec_helper'
require 'shoulda/matchers'

RSpec.describe Category, :type => :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  
  it "should match" do
  	category = Category.new
  	category.name = "Clothes"
  	category.should validate_format_of(:name).with(/^[a-zA-Z\d ]*$/).with_message("Can only contain English letters and numbers.")
  end

  it "should validate presence" do
  	category = Category.new
  	category.name = "Clothes"
  	category.should validate_presence_of(:name)
  end

  it "Should be" do
  	category = Category.new
  	category.name = "Clothes"
  	category.name.should be_an_instance_of(String)
  end
end