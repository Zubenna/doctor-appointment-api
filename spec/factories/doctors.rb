FactoryBot.define do
  factory :doctor do
    full_name { Faker::Name.name }
    email { Faker::Internet.free_email }
    phonenumber { Faker::PhoneNumber.cell_phone }
    specialty { 'Gynecologist' }
    years_of_experience { Faker::Number.number(digits: 2) }
    picture { 'https://i.imgur.com/g8IFvWq.jpg' }
    location { Faker::Nation.capital_city }
  end
end
