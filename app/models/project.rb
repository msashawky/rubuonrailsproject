class Project < ActiveRecord::Base
	belongs_to :registered_user
	belongs_to :ngo
	has_many :products, dependent: :destroy
	validates :project_name, :project_description, :project_social_state, presence: true
	validates :project_name, uniqueness: true
	validates :project_name, length: { minimum: 7 }
end
