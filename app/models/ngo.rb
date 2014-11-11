class Ngo < ActiveRecord::Base
	has_many :projects
	belongs_to :registered_user

    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 2.megabytes
    validates :NGO_name,  format: { with: /\A[a-zA-Z]+\z/ }
	validates :NGO_name, :bank_account, :NGO_number,:image , :email , presence: true
	validates :NGO_name, :bank_account, :NGO_number, :email , uniqueness: true
	validates :email  , format: {  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
	validates :website, format: { with: /(.+)\.com/i }
	validates :ZIP_code, length: {is: 5}
	validates :ZIP_code, :phone_number, numericality: { only_integer: true }
	validates :fb_link, allow_blank: true, format: { with: /\Afacebook.com/i }
	validates :tw_link, allow_blank: true, format: { with: /\Atwitter.com/i }
	validates :gp_link, allow_blank: true, format: { with: /\Aplus.google.com/i }
	validates :phone_number, length: { minimum: 8, maximum: 11 }
	validates :description ,format: { with: /\A[a-zA-Z]+\z/ }
end
