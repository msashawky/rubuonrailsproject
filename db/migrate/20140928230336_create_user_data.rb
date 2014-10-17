class CreateUserData < ActiveRecord::Migration
  def change
    create_table :user_data do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :username
      t.string :password
      t.string :gender

      t.timestamps
    end
  end
end
