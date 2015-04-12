require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get order_page" do
    get :order_page
    assert_response :success
  end

end
