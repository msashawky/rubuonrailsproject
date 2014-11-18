class RemovePartphotofromproject < ActiveRecord::Migration
  def change
  	remove_column :projects, :project_photo, :string
  end
end
