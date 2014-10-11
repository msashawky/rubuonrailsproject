class AddAttachmentImageToNgoPages < ActiveRecord::Migration
  def self.up
    change_table :ngo_pages do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :ngo_pages, :image
  end
end
