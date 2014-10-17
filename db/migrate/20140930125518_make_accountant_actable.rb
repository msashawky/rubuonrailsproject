class MakeAccountantActable < ActiveRecord::Migration
  def change
  	change_table :accountants do |t|
		t.actable
	end
  end
end
