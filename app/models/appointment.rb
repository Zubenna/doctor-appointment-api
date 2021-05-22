class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient
  validates_presence_of :patient_id, :doctor_id, :appointment_date, :location, :doctor_name
end
