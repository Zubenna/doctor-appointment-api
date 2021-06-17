require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create(full_name: 'Daniel Obi', username: 'Dobi', phone_number: '09087763456',
                        email: 'obi@yahoo.com', address: '10 Etiti Street Aba', password_digest: '123456')
  end

  describe 'associations' do
    it { should have_many(:appointments) }
    it { should have_many(:doctors) }
  end

  describe 'validations' do
    it { should validate_presence_of(:full_name) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:phone_number) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password_digest) }
  end

  it 'checks email uniquness' do
    user2 = User.create(full_name: 'Daniel Obi', username: 'Zobi', phone_number: '09087763456',
                        email: 'obi@yahoo.com', address: "'10' Etiti Street Aba", password_digest: 'memeee')
    expect(user2.valid?).to eql(false)
  end
  it 'checks username uniqueness' do
    user3 = User.create(full_name: 'Daniel Obi', username: 'Dobi', phone_number: '09087763456',
                        email: 'webi@yahoo.com', address: "'10' Etiti Street Aba", password_digest: 'memeee')
    expect(user3.valid?).to eql(false)
  end

  it 'full_name must be present' do
    @user.full_name = nil
    expect(@user).to_not be_valid
  end
  it 'username must be present' do
    @user.username = nil
    expect(@user).to_not be_valid
  end
  it 'email must be present' do
    @user.email = nil
    expect(@user).to_not be_valid
  end
  it 'Phonenumber must be present' do
    @user.phone_number = nil
    expect(@user).to_not be_valid
  end
  it 'Address is optional' do
    @user.address = nil
    expect(@user).to be_valid
  end
  it 'Password must be present' do
    @user.password_digest = nil
    expect(@user).to_not be_valid
  end
end
