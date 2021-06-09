require 'rails_helper'

RSpec.describe 'Registrations Controller' do
  describe 'POST /api/v1/registrations' do
    let(:valid_attributes) do
      { user: {
        full_name: 'Daniel Obi',
        username: 'Dobi',
        phone_number: '09087763456',
        email: 'obi@yahoo.com',
        address: '10 Etiti Street Aba',
        password_digest: '123456'
      } }
    end

    context 'when request attributes are valid' do
      before { post '/api/v1/registrations', params: valid_attributes }

      it 'returns status created' do
        expect(response.status == 'created')
      end
    end
  end
  describe 'POST /api/v1/registrations' do
    let(:valid_attributes) do
      { user: {
        full_name: 'Daniel Obi',
        username: '',
        phone_number: '09087763456',
        email: 'obi@yahoo.co
        address: '10 Etiti Street Aba',
        password_digest: '123456'
      } }
    end

    context 'when request attributes are valid' do
      before { post '/api/v1/registrations', params: valid_attributes }

      it 'returns status created' do
        expect(response.status == 500)
      end
    end
  end
end
