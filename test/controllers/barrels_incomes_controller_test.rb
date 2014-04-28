require 'test_helper'

class BarrelsIncomesControllerTest < ActionController::TestCase
  setup do
    @barrels_income = barrels_incomes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barrels_incomes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barrels_income" do
    assert_difference('BarrelsIncome.count') do
      post :create, barrels_income: { nro_remit: @barrels_income.nro_remit }
    end

    assert_redirected_to barrels_income_path(assigns(:barrels_income))
  end

  test "should show barrels_income" do
    get :show, id: @barrels_income
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barrels_income
    assert_response :success
  end

  test "should update barrels_income" do
    patch :update, id: @barrels_income, barrels_income: { nro_remit: @barrels_income.nro_remit }
    assert_redirected_to barrels_income_path(assigns(:barrels_income))
  end

  test "should destroy barrels_income" do
    assert_difference('BarrelsIncome.count', -1) do
      delete :destroy, id: @barrels_income
    end

    assert_redirected_to barrels_incomes_path
  end
end
