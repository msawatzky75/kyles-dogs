require "application_system_test_case"

class InvoiceStatusCodesTest < ApplicationSystemTestCase
  setup do
    @invoice_status_code = invoice_status_codes(:one)
  end

  test "visiting the index" do
    visit invoice_status_codes_url
    assert_selector "h1", text: "Invoice Status Codes"
  end

  test "creating a Invoice status code" do
    visit invoice_status_codes_url
    click_on "New Invoice Status Code"

    fill_in "Description", with: @invoice_status_code.description
    fill_in "Name", with: @invoice_status_code.name
    click_on "Create Invoice status code"

    assert_text "Invoice status code was successfully created"
    click_on "Back"
  end

  test "updating a Invoice status code" do
    visit invoice_status_codes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @invoice_status_code.description
    fill_in "Name", with: @invoice_status_code.name
    click_on "Update Invoice status code"

    assert_text "Invoice status code was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice status code" do
    visit invoice_status_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice status code was successfully destroyed"
  end
end
