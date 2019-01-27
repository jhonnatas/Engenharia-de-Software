require 'rails_helper'

RSpec.describe Admin, type: :model do
  it 'Válido com todos os itens preenchidos' do
    admin = create(:admin)
    expect(admin).to be_valid 
  end 
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
  
end
