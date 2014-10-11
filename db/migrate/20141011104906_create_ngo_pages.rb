class CreateNgoPages < ActiveRecord::Migration
  def change
    create_table :ngo_pages do |t|
      t.string :name
      t.string :license_number
      t.string :description
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
