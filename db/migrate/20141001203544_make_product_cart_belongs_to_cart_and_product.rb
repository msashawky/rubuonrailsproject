class MakeProductCartBelongsToCartAndProduct < ActiveRecord::Migration
  def change
  	change_table :product_carts do |t|
  		t.belongs_to :cart
		t.belongs_to :product
  	end
  end
end
