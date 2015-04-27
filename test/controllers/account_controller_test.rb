require 'test_helper'

class AccountControllerTest < ActionController::TestCase
  test "should get create_account" do
    get :create_account
    assert_response :success
  end

end
