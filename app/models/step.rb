class Step < ApplicationRecord
  belongs_to :stage
  has_many :supplies, through: :ingredients
end
