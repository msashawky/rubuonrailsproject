class CreateReistereds < ActiveRecord::Migration
  def change
    create_table :reistereds do |t|
      t.string :name
      t.string :user_name
      t.string :phone_number
      t.integer :password
      t.string :gender

      t.timestamps
    end
  end
end
