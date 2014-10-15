class MakeSiteAdminActable < ActiveRecord::Migration
  def change
  	change_table :site_admins do |t|
		t.actable
	end
  end
end
