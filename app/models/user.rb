class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :mail, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: {minimum: 8}

  has_secure_password
  belongs_to :company, optional: true
  has_many :orders

  def company?
    not company.nil?
  end
end
