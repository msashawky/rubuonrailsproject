class Product < ActiveRecord::Base
	has_many :registered_users, through: :user_products
	belongs_to :project
	belongs_to :product_category
	has_many :carts, through: :product_carts
end
