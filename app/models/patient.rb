class Patient < ApplicationRecord
   has_many :appointments
   has_many :doctors, through: :appointments, dependent: :destroy
   validates_presence_of :firstname, :lastname, :phone_number, :email
   validates_uniqueness_of :email
end
