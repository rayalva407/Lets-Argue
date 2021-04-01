require "test_helper"

class DebatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get debates_index_url
    assert_response :success
  end

  test "should get show" do
    get debates_show_url
    assert_response :success
  end

  test "should get new" do
    get debates_new_url
    assert_response :success
  end

  test "should get edit" do
    get debates_edit_url
    assert_response :success
  end

  test "should get create" do
    get debates_create_url
    assert_response :success
  end

  test "should get update" do
    get debates_update_url
    assert_response :success
  end

  test "should get destroy" do
    get debates_destroy_url
    assert_response :success
  end
end
