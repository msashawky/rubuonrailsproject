class AddEmailToNgos < ActiveRecord::Migration
  def change
  	add_column :ngos, :description, :string
  	add_column :ngos, :email, :string
  end
end
