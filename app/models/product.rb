class Product < ActiveRecord::Base
	has_many :registered_users, through: :user_products
end
