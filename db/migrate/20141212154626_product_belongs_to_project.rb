class ProductBelongsToProject < ActiveRecord::Migration
  def change
  	change_table :products do |t|
  		remove_column :products, :project_id
  		t.belongs_to :project
  	end
  end
end
