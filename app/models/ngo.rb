class Ngo < ActiveRecord::Base
	acts_as :address
	composed_of :projects
	belongs_to :registered_users
end
