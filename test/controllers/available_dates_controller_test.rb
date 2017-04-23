require 'test_helper'

class AvailableDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @available_date = available_dates(:one)
  end

  test "should get index" do
    get available_dates_url
    assert_response :success
  end

  test "should get new" do
    get new_available_date_url
    assert_response :success
  end

  test "should create available_date" do
    assert_difference('AvailableDate.count') do
      post available_dates_url, params: { available_date: { day: @available_date.day, hour: @available_date.hour, minute: @available_date.minute } }
    end

    assert_redirected_to available_date_url(AvailableDate.last)
  end

  test "should show available_date" do
    get available_date_url(@available_date)
    assert_response :success
  end

  test "should get edit" do
    get edit_available_date_url(@available_date)
    assert_response :success
  end

  test "should update available_date" do
    patch available_date_url(@available_date), params: { available_date: { day: @available_date.day, hour: @available_date.hour, minute: @available_date.minute } }
    assert_redirected_to available_date_url(@available_date)
  end

  test "should destroy available_date" do
    assert_difference('AvailableDate.count', -1) do
      delete available_date_url(@available_date)
    end

    assert_redirected_to available_dates_url
  end
end
