require 'test_helper'

class PotatoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get potato_index_url
    assert_response :success
  end

  test "should get show" do
    get potato_show_url
    assert_response :success
  end

  test "should get edit" do
    get potato_edit_url
    assert_response :success
  end

  test "should get delete" do
    get potato_delete_url
    assert_response :success
  end

  test "should get create" do
    get potato_create_url
    assert_response :success
  end

  test "should get update" do
    get potato_update_url
    assert_response :success
  end

  test "should get new" do
    get potato_new_url
    assert_response :success
  end

end
