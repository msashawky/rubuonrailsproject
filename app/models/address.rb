class Address < ActiveRecord::Base
	validates :country, :governorate, :city, :street, :apartment, presence: true
	attr_accessor :country, :governorate, :city, :street, :apartment
	def initialize(country, governorate, city, street, apartment)
		@country = country
		@governorate = governorate
		@city = city
		@street = street
		@apartment = apartment
	end
end
