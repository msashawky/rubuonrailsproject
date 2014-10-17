class NgoBelongToRegisteredUser < ActiveRecord::Migration
  def change
  	change_table :ngos do |t|
		t.belongs_to :registered_user
	end
  end
end
