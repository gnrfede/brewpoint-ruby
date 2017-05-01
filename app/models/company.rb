class Company < ApplicationRecord
  has_many :users
  has_many :orders
  has_many :suppliers
  has_many :supplies
  has_many :products
  has_many :containers
end
