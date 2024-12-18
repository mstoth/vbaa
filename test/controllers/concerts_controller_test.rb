require "test_helper"

class ConcertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @concert = concerts(:one)
    @group = groups(:one)
    @venue = venues(:one)
    @piece = pieces(:one)
  end

  test "should get index" do
    get concerts_url
    assert_response :success
  end

  test "should get new" do
    get new_concert_url
    assert_response :success
  end

  test "should create concert" do
    assert_difference("Concert.count") do
      post concerts_url, params: { concert: { end_time: @concert.end_time, fee: @concert.fee, group_id: @concert.group_id, paid: @concert.paid, start_time: @concert.start_time, title: @concert.title, venue_id: @concert.venue_id } }
    end

    assert_redirected_to concert_url(Concert.last)
  end

  test "should show concert" do
    get concert_url(@concert)
    assert_response :success
      get edit_concert_url(@concert)
  end

  test "should get edit" do
    get edit_concert_url(@concert)
    assert_response :success
  end

  test "should update concert" do
    patch concert_url(@concert), params: { concert: { end_time: @concert.end_time, fee: @concert.fee, group_id: @concert.group_id, paid: @concert.paid, start_time: @concert.start_time, title: @concert.title, venue_id: @concert.venue_id } }
    assert_redirected_to concert_url(@concert)
  end

  test "should have piece count" do
    @concert.pieces << @piece
    assert_equal @concert.pieces.count, 1
  end

  test "should destroy concert" do
    assert_difference("Concert.count", -1) do
      delete concert_url(@concert)
    end

    assert_redirected_to concerts_url
  end
end
