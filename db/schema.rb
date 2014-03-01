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

ActiveRecord::Schema.define(version: 20140301034855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["confirmation_token"], name: "index_admin_users_on_confirmation_token", unique: true, using: :btree
  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  add_index "admin_users", ["unlock_token"], name: "index_admin_users_on_unlock_token", unique: true, using: :btree

  create_table "credit_cards", force: true do |t|
    t.integer  "card_code"
    t.string   "name"
    t.string   "card_name"
    t.string   "image_file"
    t.decimal  "rating",                   precision: 3, scale: 1
    t.text     "description"
    t.string   "good"
    t.string   "bad"
    t.string   "intro_offer"
    t.string   "apr_desc"
    t.string   "cash_apr_desc"
    t.string   "penalty_apr_desc"
    t.string   "bal_trans_desc"
    t.decimal  "apr_min"
    t.decimal  "apr_max"
    t.decimal  "intro_apr"
    t.integer  "intro_apr_mths"
    t.decimal  "intro_bal_trans_apr"
    t.integer  "intro_bal_trans_apr_mths"
    t.decimal  "intro_bal_trans_fee"
    t.decimal  "intro_bonus"
    t.decimal  "intro_bonus_req_spend"
    t.integer  "intro_bonus_max_mths"
    t.decimal  "annual_fee"
    t.decimal  "first_yr_annual_fee"
    t.decimal  "general_rewards"
    t.decimal  "restaurant_rewards"
    t.decimal  "gas_rewards"
    t.decimal  "grocery_rewards"
    t.decimal  "travel_rewards"
    t.decimal  "travel_rewards_value"
    t.string   "travel_rewards_desc"
    t.string   "card_link"
    t.string   "card_tail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "credit_cards", ["card_code"], name: "index_credit_cards_on_card_code", unique: true, using: :btree

end
