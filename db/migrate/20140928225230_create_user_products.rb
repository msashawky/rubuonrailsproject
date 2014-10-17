class CreateUserProducts < ActiveRecord::Migration
  def change
    create_table :user_products do |t|

      t.timestamps
    end
  end
end
