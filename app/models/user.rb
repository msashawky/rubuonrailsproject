class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,

         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  # Relation with other models
  acts_as :user_datum
  has_one :ngo
  has_one :cart, dependent: :destroy
  has_many :projects
  has_many :products, through: :user_products
  
  # Validations
  validates_presence_of :first_name
  validates_length_of :first_name, :maximum => 50
  validates_presence_of :last_name
  validates_length_of :last_name, :maximum => 50

  validates_presence_of :phone_number
  validates_length_of :phone_number, :maximum => 15

#/^(?=.*[a-zA-Z])(?=.*[0-9]).{6,}$/    /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /
validate :password_complexity

  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
  end

validates_format_of :first_name, :with => /\A[a-zA-Z]+([a-zA-Z]|\d)*\Z/
validates_format_of :last_name, :with => /\A[a-zA-Z]+([a-zA-Z]|\d)*\Z/

#   def valid_login?(str)
#     return true if (/^\w*$/.match(str))
#     return false
# end


  # validate :allowed_password    

# def allowed_password
#   has_one_letter = password =~ /[a-zA-Z]/
#   all_valid_characters = password =~ /^[a-zA-Z0-9_]*[a-zA-Z][a-zA-Z0-9_]*$/
#   errors.add(:password, "must have at least one letter and contain only letters, digits, or underscores") unless (has_one_letter and all_valid_characters)
# end

 # validates_inclusion_of :gender, :in => [true, false] 


  #validates_presence_of :password
  #validates_length_of :password, :within => 8..25

  #validates_presence_of :email
  #validates_length_of :email, :maximum => 100

  # validates_presence_of :first_name
  # validates_length_of :last_name, :maximum => 50

  # sign_in (Devise::SessionsController) #create
  # sign_up (Devise::RegistrationsController) #create
  # account_update (Devise::RegistrationsController) #update

end
