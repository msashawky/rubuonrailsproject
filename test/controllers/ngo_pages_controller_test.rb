require 'test_helper'

class NgoPagesControllerTest < ActionController::TestCase
  setup do
    @ngo_page = ngo_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ngo_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ngo_page" do
    assert_difference('NgoPage.count') do
      post :create, ngo_page: { address: @ngo_page.address, description: @ngo_page.description, email: @ngo_page.email, license_number: @ngo_page.license_number, name: @ngo_page.name }
    end

    assert_redirected_to ngo_page_path(assigns(:ngo_page))
  end

  test "should show ngo_page" do
    get :show, id: @ngo_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ngo_page
    assert_response :success
  end

  test "should update ngo_page" do
    patch :update, id: @ngo_page, ngo_page: { address: @ngo_page.address, description: @ngo_page.description, email: @ngo_page.email, license_number: @ngo_page.license_number, name: @ngo_page.name }
    assert_redirected_to ngo_page_path(assigns(:ngo_page))
  end

  test "should destroy ngo_page" do
    assert_difference('NgoPage.count', -1) do
      delete :destroy, id: @ngo_page
    end

    assert_redirected_to ngo_pages_path
  end
end
