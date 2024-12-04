class Group < ApplicationRecord
  has_one_attached :image
  geocoded_by :address
  validates_presence_of :title
  after_validation :geocode          # auto-fetch coordinates
end
