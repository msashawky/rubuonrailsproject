
class NgoPage < ActiveRecord::Base
   has_attached_file :image , :styles => { :medium => "300x300>", :thumb => "100x100>" } , :default_url => "/images/:style/missing.png"
 

  validates :name, uniqueness: true ,  format: { with: /\A[a-zA-Z]+\z/ }
  validates :description ,format: { with: /\A[a-zA-Z]+\z/ }
  validates :email , uniqueness: true ,format: {  with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/}
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  validates_with AttachmentSizeValidator, :attributes => :image, :less_than => 2.megabytes
  

end
