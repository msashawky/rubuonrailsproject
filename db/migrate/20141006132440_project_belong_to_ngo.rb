class ProjectBelongToNgo < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
		t.belongs_to :ngo
	end
  end
end
