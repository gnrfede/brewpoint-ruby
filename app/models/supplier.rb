class Supplier < ApplicationRecord
  validates :name, presence: { message: "El campo nombre no puede estar vacio"}
  belongs_to :company
  has_and_belongs_to_many :supplies
end
