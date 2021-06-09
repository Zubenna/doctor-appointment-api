require 'rails_helper'

RSpec.describe Doctor, type: :model do
  subject do
    Doctor.new(
      full_name: 'Nkeiru Flora',
      email: 'nkeiru@yahoo.com',
      phonenumber: '08079976534',
      specialty: 'Dentist',
      years_of_experience: 15,
      picture: 'https://i.imgur.com/LTJ8mJO.jpg',
      location: 'Enugu'
    )
  end

  before { subject.save }

  context 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:users) }
  end

  context 'Doctor validations' do
    it { should validate_presence_of :full_name }
    it { should validate_presence_of :phonenumber }
    it { should validate_presence_of :email }
    it { should validate_presence_of :specialty }
    it { should validate_presence_of :picture }
    it { should validate_presence_of :location }
  end
  it 'Full name should be present' do
    subject.full_name = nil
    expect(subject).to_not be_valid
  end

  it 'valid if full name is present' do
    subject.full_name = 'Obiora Eze'
    expect(subject).to be_valid
  end

  it 'Email should be present' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'location should be present' do
    subject.location = nil
    expect(subject).to_not be_valid
  end

  it 'Specialty should be present' do
    subject.specialty = nil
    expect(subject).to_not be_valid
  end

  it 'Picture must be present' do
    subject.picture = nil
    expect(subject).to_not be_valid
  end

  it 'Years of experience must not be present' do
    subject.years_of_experience = nil
    expect(subject).to be_valid
  end

  it 'Phone number must be present' do
    subject.phonenumber = nil
    expect(subject).to_not be_valid
  end
end
