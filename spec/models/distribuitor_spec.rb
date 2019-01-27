require 'rails_helper'

RSpec.describe Distribuitor, type: :model do
  it 'Válido com todos os itens preenchidos' do
    distribuitor = create(:distribuitor)
    expect(distribuitor).to be_valid 
  end 

 
  context 'Validações' do
    it { is_expected.to validate_presence_of(:rsocial) }

    it {is_expected.to validate_presence_of(:zipcode)}

    #it { is_expected.to validate_uniqueness_of(:cnpj) }
  end

  
end
