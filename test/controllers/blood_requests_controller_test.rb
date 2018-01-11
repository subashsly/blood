require 'test_helper'

class BloodRequestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blood_request = blood_requests(:one)
  end

  test "should get index" do
    get blood_requests_url
    assert_response :success
  end

  test "should get new" do
    get new_blood_request_url
    assert_response :success
  end

  test "should create blood_request" do
    assert_difference('BloodRequest.count') do
      post blood_requests_url, params: { blood_request: { address: @blood_request.address, blood_group: @blood_request.blood_group, city: @blood_request.city, contact_name: @blood_request.contact_name, email: @blood_request.email, hospital_name: @blood_request.hospital_name, patient_name: @blood_request.patient_name, phone: @blood_request.phone, required_date: @blood_request.required_date } }
    end

    assert_redirected_to blood_request_url(BloodRequest.last)
  end

  test "should show blood_request" do
    get blood_request_url(@blood_request)
    assert_response :success
  end

  test "should get edit" do
    get edit_blood_request_url(@blood_request)
    assert_response :success
  end

  test "should update blood_request" do
    patch blood_request_url(@blood_request), params: { blood_request: { address: @blood_request.address, blood_group: @blood_request.blood_group, city: @blood_request.city, contact_name: @blood_request.contact_name, email: @blood_request.email, hospital_name: @blood_request.hospital_name, patient_name: @blood_request.patient_name, phone: @blood_request.phone, required_date: @blood_request.required_date } }
    assert_redirected_to blood_request_url(@blood_request)
  end

  test "should destroy blood_request" do
    assert_difference('BloodRequest.count', -1) do
      delete blood_request_url(@blood_request)
    end

    assert_redirected_to blood_requests_url
  end
end
