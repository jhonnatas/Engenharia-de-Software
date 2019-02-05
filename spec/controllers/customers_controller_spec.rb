require 'rails_helper'



RSpec.describe CustomersController, type: :controller do
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
          @movie = create(:movie, genre: @genre)
      end
      it 'com atributos válidos' do 
          movie_params = attributes_for(:movie).merge({genre_id: @genre.id})
          sign_in @admin 
          expect{
              post :create, params: { movie: movie_params } 
          }.to change( Movie, :count).by(1)
      end
      
      it 'com atributos inválidos' do 
          movie_params = attributes_for(:movie, title: nil)
          sign_in @admin 
          expect{
              post :create, params: { movie: movie_params } 
          }.not_to change( Movie, :count)
      end
      context '#show' do 
          it 'retornar 200 ' do 
              sign_in @admin
              get :show, params: {id: @movie.id}
              expect(response).to have_http_status(200)
          end
      end
  end
end
