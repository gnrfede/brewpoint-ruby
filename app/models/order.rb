class Order < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :products, through: :order_products
end
