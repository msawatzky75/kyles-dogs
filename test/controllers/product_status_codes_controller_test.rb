require 'test_helper'

class ProductStatusCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_status_code = product_status_codes(:one)
  end

  test "should get index" do
    get product_status_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_product_status_code_url
    assert_response :success
  end

  test "should create product_status_code" do
    assert_difference('ProductStatusCode.count') do
      post product_status_codes_url, params: { product_status_code: { description: @product_status_code.description, name: @product_status_code.name } }
    end

    assert_redirected_to product_status_code_url(ProductStatusCode.last)
  end

  test "should show product_status_code" do
    get product_status_code_url(@product_status_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_status_code_url(@product_status_code)
    assert_response :success
  end

  test "should update product_status_code" do
    patch product_status_code_url(@product_status_code), params: { product_status_code: { description: @product_status_code.description, name: @product_status_code.name } }
    assert_redirected_to product_status_code_url(@product_status_code)
  end

  test "should destroy product_status_code" do
    assert_difference('ProductStatusCode.count', -1) do
      delete product_status_code_url(@product_status_code)
    end

    assert_redirected_to product_status_codes_url
  end
end
