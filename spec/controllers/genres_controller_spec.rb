require 'rails_helper'

RSpec.describe GenresController, type: :controller do
    describe 'Como usuario não logado!' do
        context '#index' do 
            it 'Retornar 302 (não autorizado)' do 
                get :index
                expect(response).to have_http_status(302)
            end
        end
    end
    
    describe 'Como Admin logado!' do
        before do 
            @admin = create(:admin)
            @genre = create(:genre)
        end
        it 'com atributos válidos' do 
            genre_params = attributes_for(:genre)
            sign_in @admin 
            expect{
                post :create, params: { genre: genre_params } 
            }.to change( Genre, :count).by(1)
        end
        
        it 'com atributos inválidos' do 
            genre_params = attributes_for(:genre, name: nil)
            sign_in @admin 
            expect{
                post :create, params: { genre: genre_params } 
            }.not_to change( Genre, :count)
        end
        context '#show' do 
            it 'retornar 200 ' do 
                sign_in @admin
                get :show, params: {id: @genre.id}
                expect(response).to have_http_status(200)
            end
        end
    end
end
