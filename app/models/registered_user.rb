class RegisteredUser < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	# Relation with other models
	acts_as :user_datum
	has_one :ngo
	has_one :cart, dependent: :destroy
	has_many :projects
	has_many :products, through: :user_products

	# Some validations
	#validates :card_number, uniqueness: true
	#validates :country, :governorate, :city, :street, :apartment, presence: true

	# Registered user can comment on a product
	acts_as_commontator
end
