class CreateCreateNgos < ActiveRecord::Migration
  def change
    create_table :create_ngos do |t|
      t.string :name
      t.string :license_number
      t.string :description
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
