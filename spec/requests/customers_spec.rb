require 'rails_helper'

RSpec.describe "Customers", type: :request do

  describe "GET /customers" do
    before do 
      admin = create(:admin)
      login_as(admin ,scope: :admin)
    end
    it "works! (now write some real specs)" do
      get customers_path
      expect(response).to have_http_status(200)
    end

    it 'Create a Customer' do
      click_button 'Sign in'
      fill_in 'name' , with: Faker::Name.name
      fill_in 'CPF' , with: '123456789-01'
      fill_in 'Phone' , with: '88 2120-2020'
      click_on 'Criar Customer'
    end
  end
end
