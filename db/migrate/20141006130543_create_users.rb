class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :card_number
      t.string :country
      t.string :city
      t.string :street
      t.string :apartment
      t.string :governorate
    end
  end
end
