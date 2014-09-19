require 'test_helper'

class ReisteredsControllerTest < ActionController::TestCase
  setup do
    @reistered = reistereds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reistereds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reistered" do
    assert_difference('Reistered.count') do
      post :create, reistered: { gender: @reistered.gender, name: @reistered.name, password: @reistered.password, phone_number: @reistered.phone_number, user_name: @reistered.user_name }
    end

    assert_redirected_to reistered_path(assigns(:reistered))
  end

  test "should show reistered" do
    get :show, id: @reistered
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reistered
    assert_response :success
  end

  test "should update reistered" do
    patch :update, id: @reistered, reistered: { gender: @reistered.gender, name: @reistered.name, password: @reistered.password, phone_number: @reistered.phone_number, user_name: @reistered.user_name }
    assert_redirected_to reistered_path(assigns(:reistered))
  end

  test "should destroy reistered" do
    assert_difference('Reistered.count', -1) do
      delete :destroy, id: @reistered
    end

    assert_redirected_to reistereds_path
  end
end
