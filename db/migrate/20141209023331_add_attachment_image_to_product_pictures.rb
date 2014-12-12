class AddAttachmentImageToProductPictures < ActiveRecord::Migration
  def self.up
    change_table :product_pictures do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :product_pictures, :image
  end
end
