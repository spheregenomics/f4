require 'test_helper'

class CourseSessionsControllerTest < ActionController::TestCase
  setup do
    @course_session = course_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_session" do
    assert_difference('CourseSession.count') do
      post :create, course_session: { course_status: @course_session.course_status, end_date: @course_session.end_date, max_students: @course_session.max_students, session_type: @course_session.session_type, start_date: @course_session.start_date }
    end

    assert_redirected_to course_session_path(assigns(:course_session))
  end

  test "should show course_session" do
    get :show, id: @course_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_session
    assert_response :success
  end

  test "should update course_session" do
    put :update, id: @course_session, course_session: { course_status: @course_session.course_status, end_date: @course_session.end_date, max_students: @course_session.max_students, session_type: @course_session.session_type, start_date: @course_session.start_date }
    assert_redirected_to course_session_path(assigns(:course_session))
  end

  test "should destroy course_session" do
    assert_difference('CourseSession.count', -1) do
      delete :destroy, id: @course_session
    end

    assert_redirected_to course_sessions_path
  end
end
