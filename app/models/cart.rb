class Cart < ActiveRecord::Base
	has_many :products, through: :product_carts
	validates_associated :products
end
