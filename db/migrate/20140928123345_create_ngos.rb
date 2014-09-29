class CreateNgos < ActiveRecord::Migration
  def change
    create_table :ngos do |t|
      t.string :NGO_name
      t.string :bank_account
      t.string :NGO_number
      t.string :website
      t.string :ZIP_code
      t.string :phone_number
      t.string :fb_link
      t.string :tw_link
      t.string :gp_link

      t.timestamps
    end
  end
end
