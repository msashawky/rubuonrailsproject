class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.date :date_of_birth
      t.string :username
      t.string :password
      t.integer :phone
      t.boolean :gender

      t.timestamps
    end
  end
end
