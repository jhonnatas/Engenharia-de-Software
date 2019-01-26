require 'rails_helper'

RSpec.describe DistribuitorsController, type: :controller do
    it 'Responder com sucesso!' do 
        get :index
        expect(response).to have_http_status(403)
    end
end
