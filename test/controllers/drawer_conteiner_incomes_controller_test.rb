require 'test_helper'

class DrawerConteinerIncomesControllerTest < ActionController::TestCase
  setup do
    @drawer_conteiner_income = drawer_conteiner_incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drawer_conteiner_incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drawer_conteiner_income" do
    assert_difference('DrawerConteinerIncome.count') do
      post :create, drawer_conteiner_income: { nro_remit: @drawer_conteiner_income.nro_remit }
    end

    assert_redirected_to drawer_conteiner_income_path(assigns(:drawer_conteiner_income))
  end

  test "should show drawer_conteiner_income" do
    get :show, id: @drawer_conteiner_income
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drawer_conteiner_income
    assert_response :success
  end

  test "should update drawer_conteiner_income" do
    patch :update, id: @drawer_conteiner_income, drawer_conteiner_income: { nro_remit: @drawer_conteiner_income.nro_remit }
    assert_redirected_to drawer_conteiner_income_path(assigns(:drawer_conteiner_income))
  end

  test "should destroy drawer_conteiner_income" do
    assert_difference('DrawerConteinerIncome.count', -1) do
      delete :destroy, id: @drawer_conteiner_income
    end

    assert_redirected_to drawer_conteiner_incomes_path
  end
end
