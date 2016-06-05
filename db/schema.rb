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

ActiveRecord::Schema.define(version: 20160605081553) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hospitals", force: :cascade do |t|
    t.text     "hospital_name"
    t.string   "hospital_post_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "trust_id"
  end

  add_index "hospitals", ["trust_id"], name: "index_hospitals_on_trust_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.text     "review_title"
    t.text     "review_body"
    t.decimal  "sus_score"
    t.decimal  "csus_score"
    t.integer  "star_rating"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "systems", force: :cascade do |t|
    t.text     "system_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trusts", force: :cascade do |t|
    t.text     "trust_name"
    t.string   "nhs_code"
    t.string   "trust_post_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "trust_number"
    t.text     "trust_legal_name"
    t.text     "trust_display_name"
    t.text     "trust_type"
    t.text     "trust_region"
    t.date     "trust_date_of_establishment"
    t.string   "trust_main_phone"
    t.text     "trust_hq_address_line_1"
    t.text     "trust_hq_address_line_2"
    t.text     "trust_hq_address_line_3"
    t.text     "trust_hq_address_line_4"
    t.text     "trust_postcode"
    t.text     "trust_country"
    t.text     "trust_website_url"
    t.text     "trust_email_pattern"
    t.text     "trust_nhs_code"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "hospitals", "trusts"
  add_foreign_key "reviews", "users"
end
