require 'test_helper'

class AccountantsControllerTest < ActionController::TestCase
  setup do
    @accountant = accountants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:accountants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create accountant" do
    assert_difference('Accountant.count') do
      post :create, accountant: {  }
    end

    assert_redirected_to accountant_path(assigns(:accountant))
  end

  test "should show accountant" do
    get :show, id: @accountant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @accountant
    assert_response :success
  end

  test "should update accountant" do
    patch :update, id: @accountant, accountant: {  }
    assert_redirected_to accountant_path(assigns(:accountant))
  end

  test "should destroy accountant" do
    assert_difference('Accountant.count', -1) do
      delete :destroy, id: @accountant
    end

    assert_redirected_to accountants_path
  end
end
