require 'test_helper'

class TroublesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get troubles_show_url
    assert_response :success
  end

end
