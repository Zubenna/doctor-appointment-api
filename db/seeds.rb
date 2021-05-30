# Doctor.destroy_all
Doctor.create!([{
  full_name: 'Andrew Okoh',
  email: 'a.okoh@gmail.com',
  phonenumber: '08123467820',
  specialty: 'Gynecologist',
  years_of_experience: 6,
  picture: 'https://i.imgur.com/g8IFvWq.jpg',
  location: 'Lagos',
},
{
  full_name: 'Carol Brown',
  email: 'c.brown@gmail.com',
  phonenumber: '08123887820',
  specialty: 'Gynecologist',
  years_of_experience: 10,
  picture: 'https://i.imgur.com/yUBs111.jpg',
  location: 'Lagos',
},
{
  full_name: 'Mary Okeke',
  email: 'm.okeke@gmail.com',
  phonenumber: '08173887824',
  specialty: 'Paediatrician',
  years_of_experience: 8,
  picture: 'https://i.imgur.com/FTFHfLx.jpg',
  location: 'Abuja',
},
{
  full_name: 'Michael Igwe',
  email: 'm.igwe@yahoo.com',
  phonenumber: '08173887855',
  specialty: 'Paediatrician',
  years_of_experience: 5,
  picture: 'https://i.imgur.com/R7sYKTz.jpg',
  location: 'Abuja',
},
{
  full_name: 'Thompson Clark',
  email: 't.clark@yahoo.com',
  phonenumber: '08173887833',
  specialty: 'Neurologist',
  years_of_experience: 12,
  picture: 'https://i.imgur.com/jhIKsTy.jpg',
  location: 'Port Harcourt',
},
{
  full_name: 'Bill George',
  email: 'b.george@gmail.com',
  phonenumber: '08173887844',
  specialty: 'Surgeon',
  years_of_experience: 15,
  picture: 'https://i.imgur.com/KIX4y5m.jpg',
  location: 'Port Harcourt',
},
{
  full_name: 'Bridget Green',
  email: 'b.green@yahoo.com',
  phonenumber: '08343887844',
  specialty: 'Surgeon',
  years_of_experience: 11,
  picture: 'https://i.imgur.com/LlpEZxs.jpg',
  location: 'Abuja',
},
{
  full_name: 'Jennifer Hudson',
  email: 'j.hudson@gmail.com',
  phonenumber: '08343887881',
  specialty: 'Cardiologist',
  years_of_experience: 7,
  picture: 'https://i.imgur.com/LTJ8mJO.jpg',
  location: 'Owerri',
},
{
  full_name: 'Daniel Lewis',
  email: 'd.lewis@yahoo.com',
  phonenumber: '08043887881',
  specialty: 'Cardiologist',
  years_of_experience: 10,
  picture: 'https://i.imgur.com/Ee3QiA9.jpg',
  location: 'Owerri',
},
{
  full_name: 'Kennedy Barack',
  email: 'k.barack@gmail.com',
  phonenumber: '08043887331',
  specialty: 'Surgeon',
  years_of_experience: 5,
  picture: 'https://i.imgur.com/RP9R2O5.jpg',
  location: 'PortHarcourt'
}])

# Patient.delete_all

User.create!([{
  full_name: 'Andrew John',
  username: 'Ajohn',
  phone_number: '08097767124',
  email: 'a.john@email.com',
  address: '2 taiwo street Lagos',
  password: '123123',
  password_confirmation: '123123'
},
{
  full_name: 'James Faraday',
  username: 'Jfaraday',
  phone_number: '08056723451',
  email: 'j.faraday@email.com',
  address: '3 Abubakar street Abuja',
  password: '432432',
  password_confirmation: '432432'
},
{
  full_name: 'Jesica Brown',
  username: 'Jbrown',
  phone_number: '08056723671',
  email: 'j.brown@email.com',
  address: '6 Ezike street Aba',
  password: 'memeee',
  password_confirmation: 'memeee'
}])

# Appointment.delete_all
=begin
Appointment.create!([{
  patient_id: 8,
  doctor_id: 1,
  appointment_date: '2021-05-21T19:12:56.281Z',
  location: 'Lagos',
  doctor_name: 'Andrew John'
},
{
  patient_id: 9,
  doctor_id: 4,
  appointment_date: '2021-08-21T19:12:56.281Z',
  location: 'Abuja',
  doctor_name: 'James Brown'
},
{
  patient_id: 10,
  doctor_id: 3,
  appointment_date: '2021-10-21T19:12:56.281Z',
  location: 'Enugu',
  doctor_name: 'Green Okafor'
}])
=end

