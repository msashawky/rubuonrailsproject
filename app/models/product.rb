class Product < ActiveRecord::Base
	has_many :registered_users, through: :user_products
	belongs_to :project
	belongs_to :product_category
	has_many :carts, through: :product_carts
	validates :product_name, :product_photos, :product_price, :product_count, :product_description, presence: true
	validates :product_price, :product_count, numericality: { only_integer: true }
	validates :product_count, numericality: { only_integer: true }
	validates :product_name, length: { minimum: 4 }
end
