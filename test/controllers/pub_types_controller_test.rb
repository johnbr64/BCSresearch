require 'test_helper'

class PubTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pub_type = pub_types(:one)
  end

  test "should get index" do
    get pub_types_url
    assert_response :success
  end

  test "should get new" do
    get new_pub_type_url
    assert_response :success
  end

  test "should create pub_type" do
    assert_difference('PubType.count') do
      post pub_types_url, params: { pub_type: { type: @pub_type.type } }
    end

    assert_redirected_to pub_type_url(PubType.last)
  end

  test "should show pub_type" do
    get pub_type_url(@pub_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_pub_type_url(@pub_type)
    assert_response :success
  end

  test "should update pub_type" do
    patch pub_type_url(@pub_type), params: { pub_type: { type: @pub_type.type } }
    assert_redirected_to pub_type_url(@pub_type)
  end

  test "should destroy pub_type" do
    assert_difference('PubType.count', -1) do
      delete pub_type_url(@pub_type)
    end

    assert_redirected_to pub_types_url
  end
end
