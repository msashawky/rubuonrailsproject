class AddProjectPhotoToProject < ActiveRecord::Migration
  def change
  	add_attachment :projects, :project_photo
  end
end
