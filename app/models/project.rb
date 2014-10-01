class Project < ActiveRecord::Base
	belongs_to :registered_user
	belongs_to :ngo
	has_many :products, dependent: :destroy
end
