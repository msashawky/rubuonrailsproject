class Category < ActiveRecord::Base
	has_many :products
	validates_uniqueness_of :name , message: "Sorry there is a similar Category"
	validates_format_of :name, :with => /^[a-zA-Z\d ]*$/i,
	:message => "Can only contain English letters and numbers." , :multiline => true
	validates_length_of :name, maximum: 30 , minimum: 6
	validates_presence_of :name , message: "Category name can't be Empty"
end
