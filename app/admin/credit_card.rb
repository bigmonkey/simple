ActiveAdmin.register CreditCard do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  permit_params :card_code,
                :name,
                :card_name,
                :image_file,
                :rating ,
                :description,
                :good,
                :bad,
                :intro_offer,
                :apr_desc,
                :cash_apr_desc,
                :penalty_apr_desc,
                :bal_trans_desc,
                :apr_min,
                :apr_max,
                :intro_apr,
                :intro_apr_mths,
                :intro_bal_trans_apr,
                :intro_bal_trans_apr_mths,
                :intro_bal_trans_fee,
                :intro_bonus,
                :intro_bonus_req_spend,
                :intro_bonus_max_mths,
                :annual_fee,
                :first_yr_annual_fee,
                :general_rewards,
                :restaurant_rewards,
                :gas_rewards,
                :grocery_rewards,
                :travel_rewards,
                :travel_rewards_value,
                :travel_rewards_desc,
                :card_link,
                :card_tail

  config.sort_order = "card_code_asc"
  
  index do
    column  :card_code
    column  :name do |c| link_to(image_tag("cards/#{c.image_file}"), c.card_link, target: 'blank') end
    column  :name
    column  :card_link 
    column  :card_tail 
    default_actions
  end               

  filter   :name

  form do |f|
    f.inputs "Card Details" do
      f.input :card_code, label: "Code (link_to code, max is currently #{CreditCard.maximum("card_code")})"
      f.input :name, label: "Card Name (abbrev)"
      f.input :card_name, label: "Full Name"
      f.input :image_file, label: "Image File Name (cards/...)"
      f.input :card_link, label: "Card Link (URL)"
      f.input :card_tail, label: "Affiliate Tail"
    end
    f.inputs "Card Numbers" do  
      f.input :apr_min, label: "Min APR (%)"
      f.input :apr_max, label: "Max APR (%)"
      f.input :bal_trans_apr_min, label: "Min Bal Tran APR (%)"
      f.input :bal_trans_apr_max, label: "Max Bal Tran APR (%)"
      f.input :intro_apr, label: "Intro APR (%)"
      f.input :intro_apr_mths, label: "Intro APR Duration (mths)"
      f.input :intro_bal_trans_apr, label: "Intro Bal Trans APR (%)"
      f.input :intro_bal_trans_apr_mths, label: "Intro Bal Trans Duration (mths)"
      f.input :intro_bal_trans_fee, label: "Intro Bal Trans Fee (%)"
      f.input :intro_bal_trans_fee_cap, label: "Intro Bal Trans Fee Min ($)"
      f.input :intro_bal_trans_fee_cap, label: "Intro Bal Trans Fee Cap ($)"
      f.input :intro_bonus, label: "Intro Bonus Cash Value ($)"
      f.input :intro_bonus_req_spend, label: "Req Spend for Intro Bonus ($)"
      f.input :intro_bonus_max_mths, label: "Time to Reach Bonus Req Spend (mths)"
      f.input :annual_fee, label: "Annual Fee"
      f.input :first_yr_annual_fee, label: "First Year Annual Fee"
      f.input :general_rewards, label: "Cash Back General (%)"
      f.input :restaurant_rewards, label: "Restaurant Cash Back (%)"
      f.input :gas_rewards, label: "Gas Cash Back (%)"
      f.input :grocery_rewards, label: "Grocery Cash Back (%)"
      f.input :travel_rewards, label: "Points/Miles per $ Spent"
      f.input :travel_rewards_value, label: "$ per Points or Mile"
      f.input :travel_rewards_desc, label: "Description of Conversion"
    end
    f.inputs "Card Description" do  
      f.input :rating 
      f.input :description
      f.input :good
      f.input :bad
      f.input :intro_offer 
      f.input :apr_desc
      f.input :cash_apr_desc
      f.input :penalty_apr_desc
      f.input :bal_trans_desc
    end
    f.actions
  end

end