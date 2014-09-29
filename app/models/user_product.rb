class UserProduct < ActiveRecord::Base
	belongs_to :registered_users
	belongs_to :products
end
