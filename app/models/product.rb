class Product < ApplicationRecord
  has_many :orders, through: :order_products
  belongs_to :company
  has_many :batches
  has_one :recipe
end
