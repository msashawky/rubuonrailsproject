class CreateRegisteredUsers < ActiveRecord::Migration
  def change
<<<<<<< HEAD
    #drop_table :registered_users
=======
 #   drop_table :registered_users
>>>>>>> MHossam-AddProductAsProjectOwner
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
