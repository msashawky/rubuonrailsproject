# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

#<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140922194426) do
#=======
#ActiveRecord::Schema.define(version: 20140918143711) do
#>>>>>>> 87acf66c381509f10e81eb573637eecc295fefa4

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "date_of_birth"
    t.string   "username"
    t.string   "password"
    t.integer  "phone"
    t.boolean   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ngos", force: true do |t|
    t.string   "NGO_name"
    t.string   "bank_account"
    t.string   "NGO_number"
    t.string   "address"
    t.string   "website"
    t.integer  "ZIP_code"
    t.string   "phone_number"
    t.string   "email"
    t.string   "fb_link"
    t.string   "tw_link"
    t.string   "gp_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reistereds", force: true do |t|
    t.string   "name"
    t.string   "user_name"
    t.string   "phone_number"
    t.integer  "password"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
