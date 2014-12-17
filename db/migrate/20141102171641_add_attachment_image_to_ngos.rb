class AddAttachmentImageToNgos < ActiveRecord::Migration
  def self.up
    change_table :ngos do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :ngos, :image
  end
end
