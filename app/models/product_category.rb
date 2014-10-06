class ProductCategory < ActiveRecord::Base
	has_many :products
	validates :category_name, presence: true
	validates :category_name, uniqueness: true
end
