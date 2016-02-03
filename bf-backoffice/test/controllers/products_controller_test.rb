require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get life" do
    get :life
    assert_response :success
  end

  test "should get lifetrust" do
    get :lifetrust
    assert_response :success
  end

  test "should get estateplanning" do
    get :estateplanning
    assert_response :success
  end

end
