require 'rails_helper'

RSpec.describe 'Sessions Controller' do
  let!(:user) { create(:user) }
  let(:valid_attributes) { { user: { email: user.email, password: user.password } } }
  let(:invalid_attributes) { { user: { email: 'doe@1234.com', password: user.password } } }

  describe 'POST /sessions' do
    context 'when request attributes are valid' do
      before { post '/api/v1/login', params: valid_attributes }
      it 'returns status code 201' do
        expect(response.status == 'created')
      end
    end

    context 'when request attributes are invalid' do
      before { post '/api/v1/login', params: invalid_attributes }
      it 'returns status code 401' do
        expect(response.status == 401)
      end
    end
  end

  describe 'GET /logged_in' do
    context 'when the user is not logged in' do
      before { get '/api/v1/logged_in' }
      it 'has to return status 401' do
        expect(response).to have_http_status(401)
      end
    end
  end

  describe 'DELETE /logout' do
    context 'logout the user' do
      before { post '/api/v1/login', params: valid_attributes }
      before { delete '/api/v1/logout' }

      it 'has to return status 200' do
        expect(response)
      end
    end
  end
end
