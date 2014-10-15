class DropRepeatedColumnInProject < ActiveRecord::Migration
  def change
  	remove_column :projects, :ngos_id
  end
end
