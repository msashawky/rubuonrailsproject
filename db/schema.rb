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

ActiveRecord::Schema.define(version: 20141016081820) do

  create_table "accountants", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "actable_id"
    t.string   "actable_type"
  end

  create_table "carts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "registered_user_id"
  end

  create_table "commontator_comments", force: true do |t|
    t.string   "creator_type"
    t.integer  "creator_id"
    t.string   "editor_type"
    t.integer  "editor_id"
    t.integer  "thread_id",                     null: false
    t.text     "body",                          null: false
    t.datetime "deleted_at"
    t.integer  "cached_votes_up",   default: 0
    t.integer  "cached_votes_down", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commontator_comments", ["cached_votes_down"], name: "index_commontator_comments_on_cached_votes_down"
  add_index "commontator_comments", ["cached_votes_up"], name: "index_commontator_comments_on_cached_votes_up"
  add_index "commontator_comments", ["creator_id", "creator_type", "thread_id"], name: "index_commontator_comments_on_c_id_and_c_type_and_t_id"
  add_index "commontator_comments", ["thread_id", "created_at"], name: "index_commontator_comments_on_thread_id_and_created_at"

  create_table "commontator_subscriptions", force: true do |t|
    t.string   "subscriber_type", null: false
    t.integer  "subscriber_id",   null: false
    t.integer  "thread_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commontator_subscriptions", ["subscriber_id", "subscriber_type", "thread_id"], name: "index_commontator_subscriptions_on_s_id_and_s_type_and_t_id", unique: true
  add_index "commontator_subscriptions", ["thread_id"], name: "index_commontator_subscriptions_on_thread_id"

  create_table "commontator_threads", force: true do |t|
    t.string   "commontable_type"
    t.integer  "commontable_id"
    t.datetime "closed_at"
    t.string   "closer_type"
    t.integer  "closer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commontator_threads", ["commontable_id", "commontable_type"], name: "index_commontator_threads_on_c_id_and_c_type", unique: true

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

  create_table "managers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ngos", force: true do |t|
    t.string   "NGO_name"
    t.string   "bank_account"
    t.string   "NGO_number"
    t.string   "website"
    t.string   "ZIP_code"
    t.string   "phone_number"
    t.string   "fb_link"
    t.string   "tw_link"
    t.string   "gp_link"
    t.string   "country"
    t.string   "governorate"
    t.string   "city"
    t.string   "street"
    t.string   "apartment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "registered_user_id"
  end

  create_table "product_carts", force: true do |t|
    t.integer  "product_amount"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cart_id"
    t.integer  "product_id"
  end

  create_table "product_categories", force: true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.string   "product_price"
    t.integer  "product_count",       limit: 255, default: 1
    t.string   "product_description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "project_name"
    t.text     "project_description"
    t.string   "project_photo"
    t.string   "project_social_state"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "registered_user_id"
    t.integer  "ngo_id"
  end

  create_table "registered_users", force: true do |t|
    t.string   "card_number"
    t.string   "country"
    t.string   "city"
    t.string   "street"
    t.string   "apartment"
    t.string   "governorate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "registered_users", ["email"], name: "index_registered_users_on_email", unique: true
  add_index "registered_users", ["reset_password_token"], name: "index_registered_users_on_reset_password_token", unique: true

  create_table "reistereds", force: true do |t|
    t.string   "name"
    t.string   "user_name"
    t.string   "phone_number"
    t.integer  "password"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "site_admins", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "actable_id"
    t.string   "actable_type"
  end

  create_table "user_data", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "username"
    t.string   "password"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "actable_id"
    t.string   "actable_type"
  end

  create_table "user_products", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "registered_user_id"
    t.integer  "product_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
