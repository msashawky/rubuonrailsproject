class AddPhotoAndSocialStateToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :project_photo, :string
  	add_column :projects, :project_social_state, :string
  end
end
