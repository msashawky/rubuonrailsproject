class AddAttachmentProjectPhotoToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :project_photo
    end
  end

  def self.down
    remove_attachment :projects, :project_photo
  end
end
