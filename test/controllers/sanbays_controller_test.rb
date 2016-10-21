require 'test_helper'

class SanbaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sanbay = sanbays(:one)
  end

  test "should get index" do
    get sanbays_url
    assert_response :success
  end

  test "should get new" do
    get new_sanbay_url
    assert_response :success
  end

  test "should create sanbay" do
    assert_difference('Sanbay.count') do
      post sanbays_url, params: { sanbay: { masanbay: @sanbay.masanbay, tensanbay: @sanbay.tensanbay } }
    end

    assert_redirected_to sanbay_url(Sanbay.last)
  end

  test "should show sanbay" do
    get sanbay_url(@sanbay)
    assert_response :success
  end

  test "should get edit" do
    get edit_sanbay_url(@sanbay)
    assert_response :success
  end

  test "should update sanbay" do
    patch sanbay_url(@sanbay), params: { sanbay: { masanbay: @sanbay.masanbay, tensanbay: @sanbay.tensanbay } }
    assert_redirected_to sanbay_url(@sanbay)
  end

  test "should destroy sanbay" do
    assert_difference('Sanbay.count', -1) do
      delete sanbay_url(@sanbay)
    end

    assert_redirected_to sanbays_url
  end
end
