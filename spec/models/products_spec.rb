require "rails_helper"

RSpec.describe Product, :type => :model do
  it "can not be blank" do
    Product.create!(product_name: "Andy", product_price: "50",product_count: "5",product_description: "alugif")

  end
end