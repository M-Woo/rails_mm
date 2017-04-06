class Clown < ApplicationRecord
  has_and_belongs_to_many :partys, inverse_of: :clown
  accepts_nested_attributes_for :partys
end
