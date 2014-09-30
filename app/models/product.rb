class Product < ActiveRecord::Base
	has_many :registered_users, through: :user_products
	belongs_to :projects
end
