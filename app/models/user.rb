class User < ApplicationRecord
  has_secure_password
  belongs_to :company, optional: true
  has_many :orders
end
