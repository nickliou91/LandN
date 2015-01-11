require 'test_helper'

class SubControllerTest < ActionController::TestCase
  test "should get category" do
    get :category
    assert_response :success
  end

end
