class CountDefaultValue < ActiveRecord::Migration
  def change
  	change_column :products, :product_count,'integer USING CAST(product_count AS integer)', :default => 1
  end
end
