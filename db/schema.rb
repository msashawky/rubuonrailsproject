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

ActiveRecord::Schema.define(version: 20141014211704) do

  create_table "customers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.date     "date_of_birth"
    t.string   "username"
    t.string   "password"
    t.integer  "phone"
    t.string   "gender"
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

  create_table "products", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.text     "details"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
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
