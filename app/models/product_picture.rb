class ProductPicture < ActiveRecord::Base
	  belongs_to :product

  has_attached_file :image, :styles => {
  :thumb=> "100x100#",
  :small  => "150x150>",
  :medium => "300x300>",
  :large =>   "400x400>",
  :superlarge => "600x600>"},
    :path => ":rails_root/public/images/:id/:filename",
    :url  => "/images/:id/:filename"

  do_not_validate_attachment_file_type :image
end
