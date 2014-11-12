class Project < ActiveRecord::Base
	belongs_to :registered_user
	belongs_to :ngo
	has_many :products, dependent: :destroy
  
    has_attached_file :project_photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :project_photo, :content_type => /\Aimage\/.*\Z/
    validates_with AttachmentSizeValidator, :attributes => :project_photo, :less_than => 2.megabytes

	# validates :project_name, :project_description, :project_social_state, presence: true
	# validates :project_name, uniqueness: true
	# validates :project_name, length: { minimum: 7 }
end
