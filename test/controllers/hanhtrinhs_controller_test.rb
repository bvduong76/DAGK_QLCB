require 'test_helper'

class HanhtrinhsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hanhtrinh = hanhtrinhs(:one)
  end

  test "should get index" do
    get hanhtrinhs_url
    assert_response :success
  end

  test "should get new" do
    get new_hanhtrinh_url
    assert_response :success
  end

  test "should create hanhtrinh" do
    assert_difference('Hanhtrinh.count') do
      post hanhtrinhs_url, params: { hanhtrinh: { sanbayden: @hanhtrinh.sanbayden, sanbaydi: @hanhtrinh.sanbaydi } }
    end

    assert_redirected_to hanhtrinh_url(Hanhtrinh.last)
  end

  test "should show hanhtrinh" do
    get hanhtrinh_url(@hanhtrinh)
    assert_response :success
  end

  test "should get edit" do
    get edit_hanhtrinh_url(@hanhtrinh)
    assert_response :success
  end

  test "should update hanhtrinh" do
    patch hanhtrinh_url(@hanhtrinh), params: { hanhtrinh: { sanbayden: @hanhtrinh.sanbayden, sanbaydi: @hanhtrinh.sanbaydi } }
    assert_redirected_to hanhtrinh_url(@hanhtrinh)
  end

  test "should destroy hanhtrinh" do
    assert_difference('Hanhtrinh.count', -1) do
      delete hanhtrinh_url(@hanhtrinh)
    end

    assert_redirected_to hanhtrinhs_url
  end
end
