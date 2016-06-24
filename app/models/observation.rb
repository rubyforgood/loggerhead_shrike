class Observation < ApplicationRecord
  validates_inclusion_of :num_bands, in: 0..2

  has_attached_file :photo, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  scope :most_recent, -> (count) { Observation.order(created_at: :desc).limit(count) }
end
