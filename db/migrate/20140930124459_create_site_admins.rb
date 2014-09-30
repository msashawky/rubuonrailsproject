class CreateSiteAdmins < ActiveRecord::Migration
  def change
    create_table :site_admins do |t|

      t.timestamps
    end
  end
end
