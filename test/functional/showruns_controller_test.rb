require 'test_helper'

class ShowrunsControllerTest < ActionController::TestCase
  setup do
    @showrun = showruns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showruns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showrun" do
    assert_difference('Showrun.count') do
      post :create, showrun: { event: @showrun.event, make: @showrun.make, player: @showrun.player, vote: @showrun.vote }
    end

    assert_redirected_to showrun_path(assigns(:showrun))
  end

  test "should show showrun" do
    get :show, id: @showrun
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showrun
    assert_response :success
  end

  test "should update showrun" do
    put :update, id: @showrun, showrun: { event: @showrun.event, make: @showrun.make, player: @showrun.player, vote: @showrun.vote }
    assert_redirected_to showrun_path(assigns(:showrun))
  end

  test "should destroy showrun" do
    assert_difference('Showrun.count', -1) do
      delete :destroy, id: @showrun
    end

    assert_redirected_to showruns_path
  end
end
