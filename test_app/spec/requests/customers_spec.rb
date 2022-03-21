require 'rails_helper'

RSpec.describe 'Customers', type: :request do
  describe 'GET /customers' do
    xit 'returns http success' do
      get '/customers'
      expect(response).to have_http_status(:success)
      # expect(response).to be_success
    end

    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
      # expect(response).to be_success
    end
  end
end
