<<<<<<< HEAD:db/migrate/20140928225615_create_products.rb
class CreateProducts < ActiveRecord::Migration
  # def change
  #   create_table :products do |t|
  #     t.string :product_name
  #     t.string :product_photos
  #     t.string :product_price
  #     t.string :product_count
  #     t.string :product_description
=======
class AddProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_price
      t.string :product_count
      t.string :product_description
>>>>>>> MHossam-AddProductAsProjectOwner:db/migrate/20141015090855_add_products_table.rb

  #     t.timestamps
  #   end
  # end
end
