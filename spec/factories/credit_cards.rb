# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :credit_card do
  	sequence (:card_code) { |n| 100+1 }
  end
end
