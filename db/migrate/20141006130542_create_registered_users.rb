class CreateRegisteredUsers < ActiveRecord::Migration
  def change
 #   drop_table :registered_users
    create_table :registered_users do |t|
      t.string :card_number
      t.string :country
      t.string :city
      t.string :street
      t.string :apartment
      t.string :governorate

      t.timestamps
    end
  end
end
