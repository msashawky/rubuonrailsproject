class AddAddressToCheckout < ActiveRecord::Migration
  def change
  	change_table :checkouts do |t|
  		t.string :address
  	end
  end
end
