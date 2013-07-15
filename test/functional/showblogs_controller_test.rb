require 'test_helper'

class ShowblogsControllerTest < ActionController::TestCase
  setup do
    @showblog = showblogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showblogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showblog" do
    assert_difference('Showblog.count') do
      post :create, showblog: { level: @showblog.level, name: @showblog.name, note: @showblog.note, rundate: @showblog.rundate, spec: @showblog.spec }
    end

    assert_redirected_to showblog_path(assigns(:showblog))
  end

  test "should show showblog" do
    get :show, id: @showblog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showblog
    assert_response :success
  end

  test "should update showblog" do
    put :update, id: @showblog, showblog: { level: @showblog.level, name: @showblog.name, note: @showblog.note, rundate: @showblog.rundate, spec: @showblog.spec }
    assert_redirected_to showblog_path(assigns(:showblog))
  end

  test "should destroy showblog" do
    assert_difference('Showblog.count', -1) do
      delete :destroy, id: @showblog
    end

    assert_redirected_to showblogs_path
  end
end
