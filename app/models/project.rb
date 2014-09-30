class Project < ActiveRecord::Base
	belongs_to :registered_users
	has_many :products, dependent: :destroy
end
