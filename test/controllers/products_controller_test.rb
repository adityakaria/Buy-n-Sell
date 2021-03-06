require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
    # sign_in_as users(:email => "adityakaria01@gmail.com", :password => "123456")
    # u = User.new
    # u.name = “blah” 
    # u.password = u.password_confirmation = “123456”
    # u.email = “adityakaria@rocketmail.com”  
    # u.contact_number = "9876543210"
    # post “users/sign_in, :user => {:email=>’adityakaria01@gmail.com’, :password=>’1233456’}
    # assert_response :redirect
    # follow_redirect!
    # assert_template “products/index”
    # assert session[:user]
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { brand: @product.brand, condition: @product.condition, cost: @product.cost, description: @product.description, title: @product.title } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { brand: @product.brand, condition: @product.condition, cost: @product.cost, description: @product.description, title: @product.title } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
