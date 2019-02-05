require 'rails_helper'

RSpec.feature "Customers", type: :feature do
  before do 
    admin = create(:admin)
    login_as(admin ,scope: :admin)
  end

  it 'Visit index page' do 
    visit(customers_path)
    expect(page).to have_current_path(customers_path)
  end
  
  it 'Create a Customer' do 
    visit(new_customer_path)
    fill_in('Nome', with: Faker::Name.name) 
    fill_in('CPF', with: '12345678909') 
    fill_in('Endereço', with: Faker::Address.city) 
    fill_in('Cidade', with: Faker::Address.city ) 
    fill_in('Estado', with: Faker::Address.state) 
    fill_in('Cep', with: Faker::Address.postcode) 
    fill_in('Complemento', with: Faker::Address.community) 
    fill_in('Telefone', with: Faker::PhoneNumber.phone_number) 
    click_button('Criar Customer')
    expect(page).to have_content('Customer was successfully created.')
  end
end
