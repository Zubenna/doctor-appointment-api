class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
  validates_presence_of :user_id, :doctor_id, :appointment_date, :location, :doctor_name
end
