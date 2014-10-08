class Product < ActiveRecord::Base
	# Relations with other models
	has_many :registered_users, through: :user_products
	belongs_to :project
	belongs_to :product_category
	has_many :carts, through: :product_carts
	
	# Some validations
	validates :product_name, :product_photos, :product_price, :product_count, :product_description, presence: true
	validates :product_price, :product_count, numericality: { only_integer: true }
	validates :product_count, numericality: { only_integer: true }
	validates :product_name, length: { minimum: 4 }

	# Product can be commented on
	acts_as_commontable
end
