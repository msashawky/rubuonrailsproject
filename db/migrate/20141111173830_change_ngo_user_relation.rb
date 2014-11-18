class ChangeNgoUserRelation < ActiveRecord::Migration
  def change
  	remove_column :ngos, :user_id
  	change_table :users do |t|
		t.belongs_to :ngo
	end
  end
end