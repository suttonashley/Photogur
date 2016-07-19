class User < ApplicationRecord
  has_many :pictures
  has_secure_password

  validates :username, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 50 },  format: { with: /@/ }
  validates :password, confirmation: true, presence: true, length: { in: 6..20 }
  validates :password_confirmation, presence: true, length: { in: 6..20 }
end
