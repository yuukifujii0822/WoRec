require 'test_helper'

class BodyControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get body_new_url
    assert_response :success
  end

end
