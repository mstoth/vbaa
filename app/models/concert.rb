class Concert < ApplicationRecord
  has_one_attached :image
  validates_presence_of :title
  has_many :pieces

  def length
    total=0
    pieces.each do |piece|
      total+=piece.length
    end
    total
  end
end
