require "application_system_test_case"

class ConcertsTest < ApplicationSystemTestCase
  setup do
    @concert = concerts(:one)
  end

  test "visiting the index" do
    visit concerts_url
    assert_selector "h1", text: "Concerts"
  end

  test "should create concert" do
    visit concerts_url
    click_on "New concert"

    fill_in "End time", with: @concert.end_time
    fill_in "Fee", with: @concert.fee
    fill_in "Group", with: @concert.group_id
    check "Paid" if @concert.paid
    fill_in "Start time", with: @concert.start_time
    fill_in "Title", with: @concert.title
    fill_in "Venue", with: @concert.venue_id
    click_on "Create Concert"

    assert_text "Concert was successfully created"
    click_on "Back"
  end

  test "should update Concert" do
    visit concert_url(@concert)
    click_on "Edit this concert", match: :first

    fill_in "End time", with: @concert.end_time
    fill_in "Fee", with: @concert.fee
    fill_in "Group", with: @concert.group_id
    check "Paid" if @concert.paid
    fill_in "Start time", with: @concert.start_time
    fill_in "Title", with: @concert.title
    fill_in "Venue", with: @concert.venue_id
    click_on "Update Concert"

    assert_text "Concert was successfully updated"
    click_on "Back"
  end

  test "should destroy Concert" do
    visit concert_url(@concert)
    click_on "Destroy this concert", match: :first

    assert_text "Concert was successfully destroyed"
  end
end
