class Ngo < ActiveRecord::Base
	composed_of :address, :mapping => [ %w(address_country country),
										%w(address_governorate governorate),
										%w(address_city city),
										%w(address_street street),
										%w(address_apartment apartment) ]
	has_many :projects
	validates_associated :projects
	belongs_to :registered_user

	validates :NGO_name, :bank_account, :NGO_number, :phone_number, presence: true
	validates :NGO_name, :bank_account, :NGO_number, uniqueness: true
	validates :website, format: { with: /(.+)\.com/i }
	validates :ZIP_code, length: {is: 5}
	validates :ZIP_code, :phone_number, numericality: { only_integer: true }
	validates :fb_link, format: { with: /\Afacebook.com/i }
	validates :tw_link, format: { with: /\Atwitter.com/i }
	validates :fb_link, format: { with: /\Aplus.google.com/i }
	validates :phone_number, length: { minimum: 8, maximum: 11 }
end
