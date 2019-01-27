require 'rails_helper'

RSpec.describe DistribuitorsController, type: :controller do
    describe 'Como usuario não logado!' do
        context '#index' do 
            it 'Retornar 302 (não autorizado)' do 
                get :index
                expect(response).to have_http_status(302)
            end
        end
    end
    
    describe 'Como Admin logado!' do
        context '#show' do 
            it 'retornar 200 ' do 
                admin = create(:admin)
                distribuidor = create(:distribuitor)
                sign_in admin
                get :show, params: {id: distribuidor.id}
                expect(response).to have_http_status(200)
            end
        end
    end
end
