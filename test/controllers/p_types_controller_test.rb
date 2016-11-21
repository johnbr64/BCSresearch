require 'test_helper'

class PTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @p_type = p_types(:one)
  end

  test "should get index" do
    get p_types_url
    assert_response :success
  end

  test "should get new" do
    get new_p_type_url
    assert_response :success
  end

  test "should create p_type" do
    assert_difference('PType.count') do
      post p_types_url, params: { p_type: { type: @p_type.type } }
    end

    assert_redirected_to p_type_url(PType.last)
  end

  test "should show p_type" do
    get p_type_url(@p_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_p_type_url(@p_type)
    assert_response :success
  end

  test "should update p_type" do
    patch p_type_url(@p_type), params: { p_type: { type: @p_type.type } }
    assert_redirected_to p_type_url(@p_type)
  end

  test "should destroy p_type" do
    assert_difference('PType.count', -1) do
      delete p_type_url(@p_type)
    end

    assert_redirected_to p_types_url
  end
end
