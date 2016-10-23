require 'test_helper'

class ChuyenbaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chuyenbay = chuyenbays(:one)
  end

  test "should get index" do
    get chuyenbays_url
    assert_response :success
  end

  test "should get new" do
    get new_chuyenbay_url
    assert_response :success
  end

  test "should create chuyenbay" do
    assert_difference('Chuyenbay.count') do
      post chuyenbays_url, params: { chuyenbay: { giaban: @chuyenbay.giaban, machangbay: @chuyenbay.machangbay, machuyenbay: @chuyenbay.machuyenbay, soluong: @chuyenbay.soluong } }
    end

    assert_redirected_to chuyenbay_url(Chuyenbay.last)
  end

  test "should show chuyenbay" do
    get chuyenbay_url(@chuyenbay)
    assert_response :success
  end

  test "should get edit" do
    get edit_chuyenbay_url(@chuyenbay)
    assert_response :success
  end

  test "should update chuyenbay" do
    patch chuyenbay_url(@chuyenbay), params: { chuyenbay: { giaban: @chuyenbay.giaban, machangbay: @chuyenbay.machangbay, machuyenbay: @chuyenbay.machuyenbay, soluong: @chuyenbay.soluong } }
    assert_redirected_to chuyenbay_url(@chuyenbay)
  end

  test "should destroy chuyenbay" do
    assert_difference('Chuyenbay.count', -1) do
      delete chuyenbay_url(@chuyenbay)
    end

    assert_redirected_to chuyenbays_url
  end
end
