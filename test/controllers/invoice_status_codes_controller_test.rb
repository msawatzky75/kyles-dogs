require 'test_helper'

class InvoiceStatusCodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_status_code = invoice_status_codes(:one)
  end

  test "should get index" do
    get invoice_status_codes_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_status_code_url
    assert_response :success
  end

  test "should create invoice_status_code" do
    assert_difference('InvoiceStatusCode.count') do
      post invoice_status_codes_url, params: { invoice_status_code: { description: @invoice_status_code.description, name: @invoice_status_code.name } }
    end

    assert_redirected_to invoice_status_code_url(InvoiceStatusCode.last)
  end

  test "should show invoice_status_code" do
    get invoice_status_code_url(@invoice_status_code)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_status_code_url(@invoice_status_code)
    assert_response :success
  end

  test "should update invoice_status_code" do
    patch invoice_status_code_url(@invoice_status_code), params: { invoice_status_code: { description: @invoice_status_code.description, name: @invoice_status_code.name } }
    assert_redirected_to invoice_status_code_url(@invoice_status_code)
  end

  test "should destroy invoice_status_code" do
    assert_difference('InvoiceStatusCode.count', -1) do
      delete invoice_status_code_url(@invoice_status_code)
    end

    assert_redirected_to invoice_status_codes_url
  end
end
