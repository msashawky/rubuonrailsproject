class MakeUserDataActable < ActiveRecord::Migration
  def change
  	change_table :user_data do |t|
		t.actable
	end
  end
end
