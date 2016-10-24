require 'test_helper'

class DatchosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get datchos_index_url
    assert_response :success
  end

end
