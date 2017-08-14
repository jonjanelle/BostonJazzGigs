require 'test_helper'

class BandRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get band_requests_url
    assert_response :success
  end

  test "should get new" do
    get band_requests_new_url
    assert_response :success
  end

  test "should get create" do
    post band_requests_create_url
    assert_response :success
  end

  test "should get edit" do
    get band_requests_edit_url
    assert_response :success
  end

  test "should get update" do
    patch band_requests_update_url
    assert_response :success
  end

end
