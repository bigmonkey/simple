require 'spec_helper'

describe CreditCardsController do
	describe "GET index" do		
		it "renders the :index view" do
			get :index
			response.should render_template :index
		end	
	end
			
end
