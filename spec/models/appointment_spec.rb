require 'rails_helper'

RSpec.describe Appointment, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:doctor) }
  end

  context 'Appointment validations' do
    it { is_expected.to have_db_column(:doctor_id) }
    it { is_expected.to have_db_column(:user_id) }
    it { is_expected.to have_db_column(:appointment_date) }
    it { is_expected.to have_db_column(:location) }
    it { is_expected.to have_db_column(:doctor_name) }
  end
end
