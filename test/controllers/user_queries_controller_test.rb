require 'test_helper'

class UserQueriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_query = user_queries(:one)
  end

  test "should get index" do
    get user_queries_url
    assert_response :success
  end

  test "should get new" do
    get new_user_query_url
    assert_response :success
  end

  test "should create user_query" do
    assert_difference('UserQuery.count') do
      post user_queries_url, params: { user_query: { address: @user_query.address, email: @user_query.email, full_name: @user_query.full_name, message: @user_query.message, phone_no: @user_query.phone_no, subject: @user_query.subject } }
    end

    assert_redirected_to user_query_url(UserQuery.last)
  end

  test "should show user_query" do
    get user_query_url(@user_query)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_query_url(@user_query)
    assert_response :success
  end

  test "should update user_query" do
    patch user_query_url(@user_query), params: { user_query: { address: @user_query.address, email: @user_query.email, full_name: @user_query.full_name, message: @user_query.message, phone_no: @user_query.phone_no, subject: @user_query.subject } }
    assert_redirected_to user_query_url(@user_query)
  end

  test "should destroy user_query" do
    assert_difference('UserQuery.count', -1) do
      delete user_query_url(@user_query)
    end

    assert_redirected_to user_queries_url
  end
end
