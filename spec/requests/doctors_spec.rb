require 'rails_helper'

RSpec.describe 'Doctors API', type: :request do
  # initialize test data
  let!(:doctors) { create_list(:doctor, 5) }
  let(:full_name) { doctors.first.full_name }
  let(:doctor_id) { doctors.first.id }

  # Test suite for GET /doctor
  describe 'GET /doctors/:id' do
    before { get "/api/v1/doctors/#{doctor_id}" }
    context 'when the record exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
