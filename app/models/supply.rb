class Supply < ApplicationRecord
  belongs_to :company
  has_many :steps, through: :ingredients
  has_and_belongs_to_many :suppliers
end
