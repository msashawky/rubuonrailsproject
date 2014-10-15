require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
<<<<<<< HEAD
      post :create, product: { category: @product.category, details: @product.details, name: @product.name, photo: @product.photo }
=======
      post :create, product: { product_count: @product.product_count, product_description: @product.product_description, product_name: @product.product_name, product_photos: @product.product_photos, product_price: @product.product_price }
>>>>>>> 26deee34d4bb02d875306798bd1798709e4d0f11
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
<<<<<<< HEAD
    patch :update, id: @product, product: { category: @product.category, details: @product.details, name: @product.name, photo: @product.photo }
=======
    patch :update, id: @product, product: { product_count: @product.product_count, product_description: @product.product_description, product_name: @product.product_name, product_photos: @product.product_photos, product_price: @product.product_price }
>>>>>>> 26deee34d4bb02d875306798bd1798709e4d0f11
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
