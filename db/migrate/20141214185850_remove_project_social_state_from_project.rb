class RemoveProjectSocialStateFromProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :project_social_state
  end
end
