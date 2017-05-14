class Company < ApplicationRecord
  validates :name, presence: { message: "El campo nombre no puede estar vacio"}, uniqueness: { message: "Ya existe una fábrica con éste nombre"}

  has_many :users
  has_many :orders
  has_many :suppliers
  has_many :supplies
  has_many :products
  has_many :containers
end
