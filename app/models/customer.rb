class Customer < ActiveRecord::Base
	include ActiveModel::Validations
	validates_presence_of :first_name, :last_name,:email , :date_of_birth, :username, :password, :phone, :gender
	validates_numericality_of :phone
	validates_uniqueness_of :username
	validates_length_of :password, minimum: 6
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create , message: 'Please make sure your email like someone@domain.com'
#	def initialize
#		email="ess@gmail.com"
#	end
end
