class AddProjectSocialStateToProject < ActiveRecord::Migration
  def change
  	add_attachment :projects, :project_social_state
  end
end
