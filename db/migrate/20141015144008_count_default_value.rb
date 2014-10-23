class CountDefaultValue < ActiveRecord::Migration
  def change
  	change_column :products, :product_count, :integer, :default => 1
  end
end
