class User < ApplicationRecord
  has_secure_password
  belongs_to :company, optional: true
  has_many :orders

  def company?
    not company.nil?
  end
end
