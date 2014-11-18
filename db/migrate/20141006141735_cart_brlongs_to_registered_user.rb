class CartBrlongsToRegisteredUser < ActiveRecord::Migration
  def change
  	change_table :carts do |t|
		t.belongs_to :user
	end
  end
end
