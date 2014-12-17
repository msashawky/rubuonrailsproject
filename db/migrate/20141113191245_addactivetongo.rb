class Addactivetongo < ActiveRecord::Migration
  def change
  		add_column :ngos, :active_ngo , :boolean , default: false
  	    add_column :ngos, :wait_approve , :boolean , default: true
  end
end
