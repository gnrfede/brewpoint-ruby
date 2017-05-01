class Batch < ApplicationRecord
  belongs_to :product
  has_one :container

end
