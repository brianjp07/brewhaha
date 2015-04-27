require 'test_helper'

class MapsControllerTest < ActionController::TestCase
  test "should get coffee_map" do
    get :coffee_map
    assert_response :success
  end

end
