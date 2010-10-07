require 'test_helper'

class InterviewSessionsControllerTest < ActionController::TestCase
  setup do
    @interview_session = interview_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interview_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interview_session" do
    assert_difference('InterviewSession.count') do
      post :create, :interview_session => @interview_session.attributes
    end

    assert_redirected_to interview_session_path(assigns(:interview_session))
  end

  test "should show interview_session" do
    get :show, :id => @interview_session.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @interview_session.to_param
    assert_response :success
  end

  test "should update interview_session" do
    put :update, :id => @interview_session.to_param, :interview_session => @interview_session.attributes
    assert_redirected_to interview_session_path(assigns(:interview_session))
  end

  test "should destroy interview_session" do
    assert_difference('InterviewSession.count', -1) do
      delete :destroy, :id => @interview_session.to_param
    end

    assert_redirected_to interview_sessions_path
  end
end
