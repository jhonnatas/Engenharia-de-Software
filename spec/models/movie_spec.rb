require 'rails_helper'

RSpec.describe Movie, type: :model do
  before do 
    @genre = create(:genre)
  end

  it 'Válido com todos os itens preenchidos' do
    movie = create(:movie, genre: @genre)
    expect(movie).to be_valid 
  end 
  
  
  describe Movie do
   
    context 'Titles' do 
      it 'tem que ser preenchido!'do  
        is_expected.to validate_presence_of(:title)
      end

      it 'tem que ser preenchido!'do  
        is_expected.to validate_presence_of(:title_br)
      end

      it "Tem que ser único!" do
        Movie.create!(:title=>"Casper the Friendly Ghost", :title_br=>"Gasparzinho o Fantasminha Camarada", :tipo => "Aventura"  , :genre =>  @genre)
        movie = Movie.new(:title=>"Casper the Friendly Ghost")
        expect(movie).not_to be_valid
        movie.errors[:title].include? ("já está em uso")
      end
    end
  end

  it 'Um filme tem que petencer a um Gênero!' do 
    is_expected.to belong_to(:genre) 
  end
end
