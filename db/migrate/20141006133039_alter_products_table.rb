class AlterProductsTable < ActiveRecord::Migration
  def change
  	rename_column :products, :projects_id, :project_id
  	rename_column :products, :product_categories_id, :product_category_id
  	
  end
end
