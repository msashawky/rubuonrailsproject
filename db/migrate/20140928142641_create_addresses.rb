class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :governorate
      t.string :city
      t.string :street
      t.string :apartment

      t.timestamps
    end
  end
end
