# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products=Product.create({product_name: 'sayed',id:'1',product_count:'4',product_price:'40',product_description:'moamennanlhaf'})
Comment.create(user_email: 'moomen.abdelwahed@yahoo.com', body: 'Test comment', product_id: 1, created_at: "2014-11-11 22:27:22", updated_at: "2014-11-11 22:27:22")



