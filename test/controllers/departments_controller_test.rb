require 'test_helper'

class DepartmentsControllerTest < ActionController::TestCase
  setup do
    @department = departments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create department" do
    assert_difference('Department.count') do
      post :create, department: { arrival_time: @department.arrival_time, arrival_tolerance: @department.arrival_tolerance, departure_time: @department.departure_time, departure_tolerance: @department.departure_tolerance, lunch_finish: @department.lunch_finish, lunch_start: @department.lunch_start, name: @department.name, working_hours: @department.working_hours }
    end

    assert_redirected_to department_path(assigns(:department))
  end

  test "should show department" do
    get :show, id: @department
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @department
    assert_response :success
  end

  test "should update department" do
    patch :update, id: @department, department: { arrival_time: @department.arrival_time, arrival_tolerance: @department.arrival_tolerance, departure_time: @department.departure_time, departure_tolerance: @department.departure_tolerance, lunch_finish: @department.lunch_finish, lunch_start: @department.lunch_start, name: @department.name, working_hours: @department.working_hours }
    assert_redirected_to department_path(assigns(:department))
  end

  test "should destroy department" do
    assert_difference('Department.count', -1) do
      delete :destroy, id: @department
    end

    assert_redirected_to departments_path
  end
end
