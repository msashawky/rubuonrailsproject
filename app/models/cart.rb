class Cart < ActiveRecord::Base
	belongs_to :user
	has_many :products, through: :product_carts
end
