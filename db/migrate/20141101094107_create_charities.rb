class CreateCharities < ActiveRecord::Migration
  def change
    create_table :charities do |t|
      t.string :charity_field

      t.timestamps
    end
  end
end
