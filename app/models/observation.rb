class Observation < ApplicationRecord
  validates_inclusion_of :num_bands, in: 0..2
end
