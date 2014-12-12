# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create({product_name: 'sayed',product_count:'4',product_price:'40',product_description:'moamennanlhaf'})
Comment.create(user_email: 'moomen.abdelwahed@yahoo.com', body: 'Test comment', product_id: 1, created_at: "2014-11-11 22:27:22", updated_at: "2014-11-11 22:27:22")
Project.create( project_name: "Assjsjs jsjsjjs", project_description: "sssssssssssssskkkkk", project_photo: "ssssssssssssss", project_social_state: "ssssssssssssss", user_id: 1)
User.create(email: "moomen.abdelwahed@gmail.com", encrypted_password: "$2a$10$zN76q4OaG1IlfEQKjqdDguR3oPqzwgn/Qhf3wyhv8YZ5Qw0apI9lG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2014-12-12 15:40:03", last_sign_in_at: "2014-12-12 15:40:03", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", confirmation_token: nil, confirmed_at: "2014-12-12 15:39:46", confirmation_sent_at: "2014-12-12 15:37:38", unconfirmed_email: nil, first_name: "Moamen", last_name: "Abdelwahed", password: nil, phone_number: "0123456789", created_at: "2014-12-12 15:37:37", updated_at: "2014-12-12 15:40:03")
Checkout.create(name: "Ahmed Alaa", phone_number: "0112365491", product_id: 1, created_at: "2014-12-12 15:36:24", updated_at: "2014-12-12 15:36:24", address: "Helwan, cairo")
