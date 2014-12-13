class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
    	t.string :name
    	t.string :phone_number
    	t.belongs_to :product
      	t.timestamps
    end
  end
end
