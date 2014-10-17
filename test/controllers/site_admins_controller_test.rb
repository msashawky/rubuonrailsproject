require 'test_helper'

class SiteAdminsControllerTest < ActionController::TestCase
  setup do
    @site_admin = site_admins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:site_admins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create site_admin" do
    assert_difference('SiteAdmin.count') do
      post :create, site_admin: {  }
    end

    assert_redirected_to site_admin_path(assigns(:site_admin))
  end

  test "should show site_admin" do
    get :show, id: @site_admin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @site_admin
    assert_response :success
  end

  test "should update site_admin" do
    patch :update, id: @site_admin, site_admin: {  }
    assert_redirected_to site_admin_path(assigns(:site_admin))
  end

  test "should destroy site_admin" do
    assert_difference('SiteAdmin.count', -1) do
      delete :destroy, id: @site_admin
    end

    assert_redirected_to site_admins_path
  end
end
