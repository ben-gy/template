class User < ApplicationRecord
  # Devise configuration (optional: invitable, omniauthable, confirmable)
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :lockable, :trackable

  # custom validation formulas
  include CustomValidators

  # validations
  validates :name, length: { in: 3..100 }, presence: true
  validates :email, length: { in: 5..100 }, format: { with: VALID_EMAIL_REGEX }, presence: true

  # associations
  has_many :visits, class_name: 'Ahoy::Visit'

  # role management
  rolify
end
