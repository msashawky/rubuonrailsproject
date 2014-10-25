class CreateNgos < ActiveRecord::Migration
   def change
     #drop_table :ngos
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
       t.string :country
       t.string :governorate
       t.string :city
       t.string :street
       t.string :apartment

       t.timestamps
     end
   end
end
