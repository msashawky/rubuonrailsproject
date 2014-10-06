class Cart < ActiveRecord::Base
	belongs_to :registered_user
	has_many :products, through: :product_carts
end
