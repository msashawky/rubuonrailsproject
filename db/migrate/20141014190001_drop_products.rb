class DropProducts < ActiveRecord::Migration
  def change
  	drop_table :Products
  end
end
