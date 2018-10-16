require 'test_helper'

class ImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get images_index_url
    assert_response :success
  end

  test "should get show" do
    get images_show_url
    assert_response :success
  end

  test "should get new" do
    get images_new_url
    assert_response :success
  end

  test "should get edit" do
    get images_edit_url
    assert_response :success
  end

  test "should get create" do
    get images_create_url
    assert_response :success
  end

  test "should get update" do
    get images_update_url
    assert_response :success
  end

  test "should get destroy" do
    get images_destroy_url
    assert_response :success
  end

  test "should get set_profile" do
    get images_set_profile_url
    assert_response :success
  end

  test "should get set_image" do
    get images_set_image_url
    assert_response :success
  end

  test "should get image_params" do
    get images_image_params_url
    assert_response :success
  end

end
