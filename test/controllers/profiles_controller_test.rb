require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get profiles_index_url
    assert_response :success
  end

  test "should get show" do
    get profiles_show_url
    assert_response :success
  end

  test "should get edit" do
    get profiles_edit_url
    assert_response :success
  end

  test "should get update" do
    get profiles_update_url
    assert_response :success
  end

  test "should get set_profile" do
    get profiles_set_profile_url
    assert_response :success
  end

  test "should get profile_params" do
    get profiles_profile_params_url
    assert_response :success
  end

end
