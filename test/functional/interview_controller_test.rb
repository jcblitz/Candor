require 'test_helper'

class InterviewControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
