class UserDatum < ActiveRecord::Base
	actable
	# validates :first_name, :last_name, :email, :phone_number, :password, presence: true
	# validates :email, format: { with: /(.+)@(.+)\.com/i }
	# validates :email, :phone_number, uniqueness: true
	# validates :password, length: { in: 6..20 }
	# validates :first_name, length: { minimum: 3 }
	# validates :last_name, length: { minimum: 3 }
	# validates :phone_number, length: { in: 8..11 }
	# validates :phone_number, numericality: { only_integer: true }
end
