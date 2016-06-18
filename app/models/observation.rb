class Observation < ApplicationRecord
  validates_inclusion_of :num_bands, in: 0..2
  has_many :images
  accepts_nested_attributes_for :images, allow_destroy: true
end
