class Product < ActiveRecord::Base

 
 

   has_attached_file :photo , :styles => {
  :thumb=> "100x100#",
  :small  => "150x150>",
  :medium => "300x300>",
  :large =>   "400x400>" } , :default_url => "/images/:style/missing.png"
 

  

  
  validates_attachment_content_type :photo, :content_type => %w(image/jpeg image/jpg image/png)
  validates_with AttachmentSizeValidator, :attributes => :photo, :less_than => 2.megabytes
  

end
