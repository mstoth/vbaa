require "test_helper"

class ConcertTest < ActiveSupport::TestCase
  def setup
    @concert = concerts(:one)
    @piece = pieces(:one)
  end
  test "it requires a title" do
    concert = concerts(:one)
    concert.title = nil
    assert_equal false, concert.save
    concert.title = "New Title"
    assert_equal true, concert.save
  end

  test "it returns a count of pieces" do
    assert_equal 0, @concert.pieces.count
  end

  test "it returns the length of the program" do
    assert_equal 0, @concert.length
  end

end
