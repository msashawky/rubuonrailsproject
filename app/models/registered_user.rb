class RegisteredUser < ActiveRecord::Base
	composed_of :address, :mapping => [ %w(address_country country),
										%w(address_governorate governorate),
										%w(address_city city),
										%w(address_street street),
										%w(address_apartment apartment) ]

	acts_as :user_datum
	has_many :ngos
	validates_associated :ngos
	has_many :projects
	validates_associated :projects
	has_many :products, through: :user_products
	validates :card_number, presence: true
	validates :card_number, uniqueness: true
end
