require 'test_helper'

class SanbaysControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get sanbays_create_url
    assert_response :success
  end

end
