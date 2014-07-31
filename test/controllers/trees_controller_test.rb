require 'test_helper'

class TreesControllerTest < ActionController::TestCase
  setup do
    @tree = trees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tree" do
    assert_difference('Tree.count') do
      post :create, tree: { circum: @tree.circum, date: @tree.date, direction: @tree.direction, droad: @tree.droad, dwater: @tree.dwater, lat: @tree.lat, light: @tree.light, long: @tree.long, notes: @tree.notes, parea: @tree.parea, pleaf: @tree.pleaf, ptree: @tree.ptree, species: @tree.species }
    end

    assert_redirected_to tree_path(assigns(:tree))
  end

  test "should show tree" do
    get :show, id: @tree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tree
    assert_response :success
  end

  test "should update tree" do
    patch :update, id: @tree, tree: { circum: @tree.circum, date: @tree.date, direction: @tree.direction, droad: @tree.droad, dwater: @tree.dwater, lat: @tree.lat, light: @tree.light, long: @tree.long, notes: @tree.notes, parea: @tree.parea, pleaf: @tree.pleaf, ptree: @tree.ptree, species: @tree.species }
    assert_redirected_to tree_path(assigns(:tree))
  end

  test "should destroy tree" do
    assert_difference('Tree.count', -1) do
      delete :destroy, id: @tree
    end

    assert_redirected_to trees_path
  end
end
