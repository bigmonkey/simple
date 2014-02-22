require 'spec_helper'

describe "CreditCard Model" do

	it "has a valid factory" do
		FactoryGirl.create(:credit_card).should be_valid
	end	

	it "is invalid without a card_code" do		
		FactoryGirl.build(:credit_card, card_code: nil).should_not be_valid
	end	

	it "is invalid with a duplicate card_code" do		
		FactoryGirl.create(:credit_card, card_code: 100)
		FactoryGirl.build(:credit_card, card_code: 100).should_not be_valid
	end	
end
