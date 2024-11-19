require "test_helper"

class ConcertTest < ActiveSupport::TestCase
  test "it requires a title" do
    concert = concerts(:one)
    concert.title = nil
    assert_equal false, concert.save
    concert.title = "New Title"
    assert_equal true, concert.save
  end
end
