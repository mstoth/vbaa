class Venue < ApplicationRecord
  has_one_attached :image
  # include Geocoder::Model::Mongoid
  geocoded_by :address
  after_validation :geocode          # auto-fetch coordinates

end
