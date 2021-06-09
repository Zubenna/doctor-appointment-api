FactoryBot.define do
  factory :appointment do
    user_id { 1 }
    doctor_id { 1 }
    appointment_date { Faker::Date.between(from: 7.days.ago, to: Date.today) }
    location { Faker::Address.city }
    doctor_name { Faker::Name.name }
  end
end
