class Doctor < ApplicationRecord
  before_save :downcase_email

  has_many :appointments
  has_many :users, through: :appointments, dependent: :destroy
  validates_presence_of :full_name, :phonenumber, :email, :specialty, :picture, :location
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates_uniqueness_of :email
  validates :email,
            presence: true,
            length: { maximum: 60 },
            format: { with: VALID_EMAIL_REGEX }

  private

  def downcase_email
    self.email = email.downcase
  end
end
