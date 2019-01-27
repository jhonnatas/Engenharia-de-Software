require 'rails_helper'

RSpec.describe Genre, type: :model do
  it 'Válido com todos os itens preenchidos' do
    genre = create(:genre)
    expect(genre).to be_valid 
  end 
  
  
  describe Genre do
    context 'Nome' do 
      it 'tem que ser preenchido!'do  
        is_expected.to validate_presence_of(:name)
      end

      it "Tem que ser único!" do
        Genre.create!(:name=>"Foo")
        genero = Genre.new(:name=>"Foo")
        expect(genero).not_to be_valid
        genero.errors[:name].include? ("já está em uso")
      end
    end
  end

  it 'Um genero tem pode ter muitos filmes!' do 
    is_expected.to have_many(:movies) 
  end
  
end
