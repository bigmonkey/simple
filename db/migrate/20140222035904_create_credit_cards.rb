class CreateCreditCards < ActiveRecord::Migration
  def change
    create_table :credit_cards do |t|
	    t.integer		"card_code"
	    t.string		"name"
	    t.text			"description"
	    t.decimal		"apr_min"
	    t.decimal		"apr_max"
	    t.decimal 	"intro_apr"
	    t.integer		"intro_apr_mths"
	    t.decimal		"intro_bal_trans_apr"
	    t.integer		"intro_bal_trans_apr_mths"
	    t.decimal		"intro_bal_trans_fee"
	    t.decimal		"intro_bonus"
	    t.decimal		"intro_bonus_req_spend"
	    t.integer		"intro_bonus_max_mths"
	    t.decimal		"annual_fee"
	    t.decimal		"first_yr_annual_fee"
	    t.decimal		"general_rewards"
	    t.decimal		"restaurant_rewards"
	    t.decimal		"gas_rewards"
	    t.decimal		"grocery_rewards"
	    t.decimal 	"travel_rewards"
	    t.decimal		"travel_rewards_value"
	    t.string		"travel_rewards_desc"
	    t.string		"card_link"
	    t.string   	"card_tail"
	    t.datetime 	"created_at", null: false
	    t.datetime 	"updated_at", null: false
      t.timestamps
    end

    add_index :credit_cards, :card_code, unique: true
  end
end
