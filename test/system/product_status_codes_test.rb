require "application_system_test_case"

class ProductStatusCodesTest < ApplicationSystemTestCase
  setup do
    @product_status_code = product_status_codes(:one)
  end

  test "visiting the index" do
    visit product_status_codes_url
    assert_selector "h1", text: "Product Status Codes"
  end

  test "creating a Product status code" do
    visit product_status_codes_url
    click_on "New Product Status Code"

    fill_in "Description", with: @product_status_code.description
    fill_in "Name", with: @product_status_code.name
    click_on "Create Product status code"

    assert_text "Product status code was successfully created"
    click_on "Back"
  end

  test "updating a Product status code" do
    visit product_status_codes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @product_status_code.description
    fill_in "Name", with: @product_status_code.name
    click_on "Update Product status code"

    assert_text "Product status code was successfully updated"
    click_on "Back"
  end

  test "destroying a Product status code" do
    visit product_status_codes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product status code was successfully destroyed"
  end
end
