require 'test_helper'

class ZatControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get zat_index_url
    assert_response :success
  end

end
