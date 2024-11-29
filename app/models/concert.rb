class Concert < ApplicationRecord
  has_one_attached :image
  has_many :reviews, dependent: :destroy
  validates_presence_of :title

end
