require 'test_helper'

class BloodDonatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_donate = blood_donates(:one)
  end

  test "should get index" do
    get blood_donates_url
    assert_response :success
  end

  test "should get new" do
    get new_blood_donate_url
    assert_response :success
  end

  test "should create blood_donate" do
    assert_difference('BloodDonate.count') do
      post blood_donates_url, params: { blood_donate: { blood_request_id: @blood_donate.blood_request_id, donate_date: @blood_donate.donate_date, user_id: @blood_donate.user_id } }
    end

    assert_redirected_to blood_donate_url(BloodDonate.last)
  end

  test "should show blood_donate" do
    get blood_donate_url(@blood_donate)
    assert_response :success
  end

  test "should get edit" do
    get edit_blood_donate_url(@blood_donate)
    assert_response :success
  end

  test "should update blood_donate" do
    patch blood_donate_url(@blood_donate), params: { blood_donate: { blood_request_id: @blood_donate.blood_request_id, donate_date: @blood_donate.donate_date, user_id: @blood_donate.user_id } }
    assert_redirected_to blood_donate_url(@blood_donate)
  end

  test "should destroy blood_donate" do
    assert_difference('BloodDonate.count', -1) do
      delete blood_donate_url(@blood_donate)
    end

    assert_redirected_to blood_donates_url
  end
end
