class User < ApplicationRecord
  has_secure_password
  before_save :downcase_email

  has_many :appointments
  has_many :doctors, through: :appointments, dependent: :destroy
  validates_presence_of :full_name, :username, :phone_number, :email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates_uniqueness_of :email, :username
  validates :email,
            presence: true,
            length: { maximum: 30 },
            format: { with: VALID_EMAIL_REGEX }
  validates :password_digest, presence: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
