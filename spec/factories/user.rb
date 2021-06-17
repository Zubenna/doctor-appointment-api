FactoryBot.define do
  factory :user do
    full_name { 'Michael Umeh' }
    username { 'Mumeh' }
    phone_number { '09087796578' }
    email { 'michael@yahoo.com' }
    address { '10 Eze chief paul, Onitsha' }
    password_digest { '123456' }
  end
end
