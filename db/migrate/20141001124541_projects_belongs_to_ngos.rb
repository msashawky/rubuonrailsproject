class ProjectsBelongsToNgos < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
		t.belongs_to :ngos
	end
  end
end
