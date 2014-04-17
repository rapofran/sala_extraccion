require 'test_helper'

class DrawerContainersControllerTest < ActionController::TestCase
  setup do
    @drawer_container = drawer_containers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drawer_containers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drawer_container" do
    assert_difference('DrawerContainer.count') do
      post :create, drawer_container: { drawers: @drawer_container.drawers }
    end

    assert_redirected_to drawer_container_path(assigns(:drawer_container))
  end

  test "should show drawer_container" do
    get :show, id: @drawer_container
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drawer_container
    assert_response :success
  end

  test "should update drawer_container" do
    patch :update, id: @drawer_container, drawer_container: { drawers: @drawer_container.drawers }
    assert_redirected_to drawer_container_path(assigns(:drawer_container))
  end

  test "should destroy drawer_container" do
    assert_difference('DrawerContainer.count', -1) do
      delete :destroy, id: @drawer_container
    end

    assert_redirected_to drawer_containers_path
  end
end
