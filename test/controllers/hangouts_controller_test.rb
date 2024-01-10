require "test_helper"

class HangoutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hangout = hangouts(:one)
  end

  test "should get index" do
    get hangouts_url
    assert_response :success
  end

  test "should get new" do
    get new_hangout_url
    assert_response :success
  end

  test "should create hangout" do
    assert_difference("Hangout.count") do
      post hangouts_url, params: { hangout: { archive: @hangout.archive, date: @hangout.date, description: @hangout.description, time: @hangout.time, title: @hangout.title, user_id: @hangout.user_id } }
    end

    assert_redirected_to hangout_url(Hangout.last)
  end

  test "should show hangout" do
    get hangout_url(@hangout)
    assert_response :success
  end

  test "should get edit" do
    get edit_hangout_url(@hangout)
    assert_response :success
  end

  test "should update hangout" do
    patch hangout_url(@hangout), params: { hangout: { archive: @hangout.archive, date: @hangout.date, description: @hangout.description, time: @hangout.time, title: @hangout.title, user_id: @hangout.user_id } }
    assert_redirected_to hangout_url(@hangout)
  end

  test "should destroy hangout" do
    assert_difference("Hangout.count", -1) do
      delete hangout_url(@hangout)
    end

    assert_redirected_to hangouts_url
  end
end
