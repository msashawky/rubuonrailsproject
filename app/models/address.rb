class Address < ActiveRecord::Base
	attr_accessor :country, :governorate, :city, :street, :apartment
	def initialize(country, governorate, city, street, apartment)
		@country = country
		@governorate = governorate
		@city = city
		@street = street
		@apartment = apartment
	end
end
