require "test_helper"

class GroupTest < ActiveSupport::TestCase
  def setup
    @group = groups(:one)
  end
  test "requires a title" do
    @group.title = nil
    assert @group.invalid?
  end
  # test "the truth" do
  #   assert true
  # end
end
