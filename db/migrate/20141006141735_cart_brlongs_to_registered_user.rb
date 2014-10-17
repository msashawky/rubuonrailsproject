class CartBrlongsToRegisteredUser < ActiveRecord::Migration
  def change
  	change_table :carts do |t|
		t.belongs_to :registered_user
	end
  end
end
