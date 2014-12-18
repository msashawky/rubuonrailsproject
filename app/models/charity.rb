class Charity < ActiveRecord::Base
	validates :charity_field , uniqueness: {message: "Repeated Charity-Field"} , format: { with: /\A[a-zA-Z]+\z/ ,message: " Enter only letters"} , length: {maximum: 30 ,message: "Maximum number of letters '30' "}
end
