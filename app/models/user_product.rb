class UserProduct < ActiveRecord::Base
	belongs_to :registered_user
	belongs_to :product
end
