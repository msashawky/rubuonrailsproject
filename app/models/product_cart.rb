class ProductCart < ActiveRecord::Base
	belongs_to :cart
	belongs_to :product
	validates :product_amount, numericality: { only_integer: true }
end
