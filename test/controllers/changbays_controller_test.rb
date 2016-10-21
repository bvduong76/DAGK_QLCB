require 'test_helper'

class ChangbaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @changbay = changbays(:one)
  end

  test "should get index" do
    get changbays_url
    assert_response :success
  end

  test "should get new" do
    get new_changbay_url
    assert_response :success
  end

  test "should create changbay" do
    assert_difference('Changbay.count') do
      post changbays_url, params: { changbay: { gio: @changbay.gio, ma: @changbay.ma, ngay: @changbay.ngay, noiden: @changbay.noiden, noidi: @changbay.noidi } }
    end

    assert_redirected_to changbay_url(Changbay.last)
  end

  test "should show changbay" do
    get changbay_url(@changbay)
    assert_response :success
  end

  test "should get edit" do
    get edit_changbay_url(@changbay)
    assert_response :success
  end

  test "should update changbay" do
    patch changbay_url(@changbay), params: { changbay: { gio: @changbay.gio, ma: @changbay.ma, ngay: @changbay.ngay, noiden: @changbay.noiden, noidi: @changbay.noidi } }
    assert_redirected_to changbay_url(@changbay)
  end

  test "should destroy changbay" do
    assert_difference('Changbay.count', -1) do
      delete changbay_url(@changbay)
    end

    assert_redirected_to changbays_url
  end
end
