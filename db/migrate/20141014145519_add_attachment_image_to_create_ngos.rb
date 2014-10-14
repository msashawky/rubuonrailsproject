class AddAttachmentImageToCreateNgos < ActiveRecord::Migration
  def self.up
    change_table :create_ngos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :create_ngos, :image
  end
end
