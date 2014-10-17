class CreateProductCarts < ActiveRecord::Migration
  def change
    create_table :product_carts do |t|
      t.integer :product_amount

      t.timestamps
    end
  end
end
