class Ngo < ActiveRecord::Base
	has_many :projects
	has_one :user

	validates :NGO_name, :bank_account, :NGO_number, :phone_number, presence: true
	validates :NGO_name, :bank_account, :NGO_number, uniqueness: true
	validates :website, format: { with: /(.+)\.com/i }
	validates :ZIP_code, length: {is: 5}
	validates :ZIP_code, :phone_number, numericality: { only_integer: true }
	validates :fb_link, allow_blank: true, format: { with: /\Afacebook.com/i }
	validates :tw_link, allow_blank: true, format: { with: /\Atwitter.com/i }
	validates :gp_link, allow_blank: true, format: { with: /\Aplus.google.com/i }
	validates :phone_number, length: { minimum: 8, maximum: 11 }
end
