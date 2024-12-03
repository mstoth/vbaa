require "test_helper"

class VenueTest < ActiveSupport::TestCase
  def setup
    @venue = venues(:one)
  end
  test "creates latitude and longitude when saved" do
    @venue.latitude = nil
    @venue.longitude = nil
    @venue.save


  end
  # test "the truth" do
  #   assert true
  # end
end
