class Doctor < ApplicationRecord
    has_many :appointments
    has_many :patients, through: :appointments, dependent: :destroy
    validates_presence_of :firstname, :lastname, :phonenumber, :email, :specialty, :picture, :location
    validates_uniqueness_of :email
end
