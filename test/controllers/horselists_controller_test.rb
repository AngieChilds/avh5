require 'test_helper'

class HorselistsControllerTest < ActionController::TestCase
  setup do
    @horselist = horselists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:horselists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create horselist" do
    assert_difference('Horselist.count') do
      post :create, horselist: { currant_level: @horselist.currant_level, date: @horselist.date, horse: @horselist.horse, note: @horselist.note, player: @horselist.player, range: @horselist.range }
    end

    assert_redirected_to horselist_path(assigns(:horselist))
  end

  test "should show horselist" do
    get :show, id: @horselist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @horselist
    assert_response :success
  end

  test "should update horselist" do
    patch :update, id: @horselist, horselist: { currant_level: @horselist.currant_level, date: @horselist.date, horse: @horselist.horse, note: @horselist.note, player: @horselist.player, range: @horselist.range }
    assert_redirected_to horselist_path(assigns(:horselist))
  end

  test "should destroy horselist" do
    assert_difference('Horselist.count', -1) do
      delete :destroy, id: @horselist
    end

    assert_redirected_to horselists_path
  end
end
