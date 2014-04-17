require 'test_helper'

class WaxesControllerTest < ActionController::TestCase
  setup do
    @wax = waxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:waxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wax" do
    assert_difference('Wax.count') do
      post :create, wax: { weight: @wax.weight }
    end

    assert_redirected_to wax_path(assigns(:wax))
  end

  test "should show wax" do
    get :show, id: @wax
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wax
    assert_response :success
  end

  test "should update wax" do
    patch :update, id: @wax, wax: { weight: @wax.weight }
    assert_redirected_to wax_path(assigns(:wax))
  end

  test "should destroy wax" do
    assert_difference('Wax.count', -1) do
      delete :destroy, id: @wax
    end

    assert_redirected_to waxes_path
  end
end
