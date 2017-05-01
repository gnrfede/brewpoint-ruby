class Ingredient < ApplicationRecord
  belongs_to :supply
  belongs_to :step
end
