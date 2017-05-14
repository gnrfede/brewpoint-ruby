class Product < ApplicationRecord
  validates :name, presence: { message: "El campo nombre no puede estar vacio"}

  has_many :order_products
  has_many :orders, through: :order_products
  belongs_to :company
  has_many :batches
  has_one :recipe
end
