require 'test_helper'

class InterviewSessionSchedulesControllerTest < ActionController::TestCase
  setup do
    @interview_session_schedule = interview_session_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interview_session_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interview_session_schedule" do
    assert_difference('InterviewSessionSchedule.count') do
      post :create, :interview_session_schedule => @interview_session_schedule.attributes
    end

    assert_redirected_to interview_session_schedule_path(assigns(:interview_session_schedule))
  end

  test "should show interview_session_schedule" do
    get :show, :id => @interview_session_schedule.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @interview_session_schedule.to_param
    assert_response :success
  end

  test "should update interview_session_schedule" do
    put :update, :id => @interview_session_schedule.to_param, :interview_session_schedule => @interview_session_schedule.attributes
    assert_redirected_to interview_session_schedule_path(assigns(:interview_session_schedule))
  end

  test "should destroy interview_session_schedule" do
    assert_difference('InterviewSessionSchedule.count', -1) do
      delete :destroy, :id => @interview_session_schedule.to_param
    end

    assert_redirected_to interview_session_schedules_path
  end
end
