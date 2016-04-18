require 'test_helper'

class CheckpointsControllerTest < ActionController::TestCase
  setup do
    @checkpoint = checkpoints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checkpoints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checkpoint" do
    assert_difference('Checkpoint.count') do
      post :create, checkpoint: { arrival: @checkpoint.arrival, barcode: @checkpoint.barcode, date: @checkpoint.date, departure: @checkpoint.departure }
    end

    assert_redirected_to checkpoint_path(assigns(:checkpoint))
  end

  test "should show checkpoint" do
    get :show, id: @checkpoint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checkpoint
    assert_response :success
  end

  test "should update checkpoint" do
    patch :update, id: @checkpoint, checkpoint: { arrival: @checkpoint.arrival, barcode: @checkpoint.barcode, date: @checkpoint.date, departure: @checkpoint.departure }
    assert_redirected_to checkpoint_path(assigns(:checkpoint))
  end

  test "should destroy checkpoint" do
    assert_difference('Checkpoint.count', -1) do
      delete :destroy, id: @checkpoint
    end

    assert_redirected_to checkpoints_path
  end
end
