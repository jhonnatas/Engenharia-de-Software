require "application_system_test_case"

class DistribuitorsTest < ApplicationSystemTestCase
  setup do
    @distribuitor = distribuitors(:one)
  end

  test "visiting the index" do
    visit distribuitors_url
    assert_selector "h1", text: "Distribuitors"
  end

  test "creating a Distribuitor" do
    visit distribuitors_url
    click_on "New Distribuitor"

    fill_in "Address", with: @distribuitor.address
    fill_in "City", with: @distribuitor.city
    fill_in "Cnpj", with: @distribuitor.cnpj
    fill_in "Complement", with: @distribuitor.complement
    fill_in "Contact", with: @distribuitor.contact
    fill_in "Neighborhood", with: @distribuitor.neighborhood
    fill_in "Phone", with: @distribuitor.phone
    fill_in "Rsocial", with: @distribuitor.rsocial
    fill_in "State", with: @distribuitor.state
    fill_in "Zipcode", with: @distribuitor.zipcode
    click_on "Create Distribuitor"

    assert_text "Distribuitor was successfully created"
    click_on "Back"
  end

  test "updating a Distribuitor" do
    visit distribuitors_url
    click_on "Edit", match: :first

    fill_in "Address", with: @distribuitor.address
    fill_in "City", with: @distribuitor.city
    fill_in "Cnpj", with: @distribuitor.cnpj
    fill_in "Complement", with: @distribuitor.complement
    fill_in "Contact", with: @distribuitor.contact
    fill_in "Neighborhood", with: @distribuitor.neighborhood
    fill_in "Phone", with: @distribuitor.phone
    fill_in "Rsocial", with: @distribuitor.rsocial
    fill_in "State", with: @distribuitor.state
    fill_in "Zipcode", with: @distribuitor.zipcode
    click_on "Update Distribuitor"

    assert_text "Distribuitor was successfully updated"
    click_on "Back"
  end

  test "destroying a Distribuitor" do
    visit distribuitors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distribuitor was successfully destroyed"
  end
end
