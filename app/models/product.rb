class Product < ActiveRecord::Base


	# Product can be commented on
	acts_as_commontable

   has_attached_file :photo , :styles => {
  :thumb=> "100x100#",
  :small  => "150x150>",
  :medium => "300x300>",
  :large =>   "400x400>",
  :superlarge => "600x600>"} , :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :photo, :content_type => %w(image/jpeg image/jpg image/png)
  validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 2.megabytes
  validates_length_of :product_name, :maximum => 30

  validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 1.megabytes
	 has_many :registered_users, through: :user_products
	 belongs_to :project
	 belongs_to :category
	 has_many :carts, through: :product_carts
	 validates :product_name,  :product_price, :product_description, presence: true
	 validates :product_price, :product_count, numericality: { only_integer: true }
	 validates :product_count , :product_price, numericality: { :greater_than => 0 }
	 validates :product_name, length: { minimum: 4 }

end
