class CreditCard < ActiveRecord::Base

	validates :card_code, presence: true
	validates :card_code, uniqueness: true
end
