class RegisteredUser < ActiveRecord::Base
	self.table_name = 'registered_users'
	acts_as :address
	acts_as :user_datum
	has_many :ngos
	has_many :projects
	has_many :products, through: :user_products
end
