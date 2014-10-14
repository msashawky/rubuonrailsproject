class AddTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :category

      t.text :details

      t.timestamps
    end
  end
end

