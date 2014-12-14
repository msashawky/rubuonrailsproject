class RemoveProjectPhotoFromProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :project_photo
  end
end
