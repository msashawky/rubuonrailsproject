class Project < ActiveRecord::Base
	belongs_to :user
	belongs_to :ngo
	has_many :products, dependent: :destroy
	has_attached_file :project_photo , :styles => {
 	 :thumb=> "100x100#",
 	 :small  => "150x150>",
 	 :medium => "300x300>",
 	 :large =>   "400x400>",
 	 :superlarge => "600x600>"} , :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :project_photo, :content_type => %w(image/jpeg image/jpg image/png)
  validates_with AttachmentSizeValidator, :attributes => :project_photo, :less_than => 2.megabytes

  has_attached_file :project_social_state , :styles => {
 	 :thumb=> "100x100#",
 	 :small  => "150x150>",
 	 :medium => "300x300>",
 	 :large =>   "400x400>",
 	 :superlarge => "600x600>"} , :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :project_social_state, :content_type => %w(image/jpeg image/jpg image/png)
  validates_with AttachmentSizeValidator, :attributes => :project_social_state, :less_than => 2.megabytes
	# validates :project_name, :project_description, :project_social_state, presence: true
	validates :project_name, uniqueness: true
	validates :project_name, length: { minimum: 7 }
end
