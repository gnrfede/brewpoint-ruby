class Stage < ApplicationRecord
  belongs_to :recipe
  has_many :steps
end
