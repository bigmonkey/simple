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

ActiveRecord::Schema.define(version: 20140222035904) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credit_cards", force: true do |t|
    t.integer  "card_code"
    t.string   "name"
    t.text     "description"
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
