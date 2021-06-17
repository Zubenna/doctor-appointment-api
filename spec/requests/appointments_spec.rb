require 'rails_helper'

RSpec.describe 'Appointments API' do
  let!(:doctor) { create(:doctor) }
  let!(:user) { create(:user) }
  let!(:appointments) { create_list(:appointment, 10, doctor_id: doctor.id, user_id: user.id) }
  let(:user_id) { user.id }
  let(:id) { appointments.first.id }

  describe 'GET /appointments/:user_id' do
    before { get "/api/v1/appointments/#{user_id}" }

    context 'when appointments exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when appointments does not exist' do
      let(:user_id) { 0 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Could not find the appointment/)
      end
    end
  end

  describe 'POST /appointments' do
    let(:valid_attributes) do
      { appointment_date: '2021-10-10',
        location: 'Lagos',
        doctor_id: doctor.id,
        user_id: user.id,
        doctor_name: 'John Duke' }
    end

    context 'when request attributes are valid' do
      before { post '/api/v1/appointments', params: valid_attributes }

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end
  end
end
