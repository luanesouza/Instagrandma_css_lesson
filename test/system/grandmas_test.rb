require "application_system_test_case"

class GrandmasTest < ApplicationSystemTestCase
  setup do
    @grandma = grandmas(:one)
  end

  test "visiting the index" do
    visit grandmas_url
    assert_selector "h1", text: "Grandmas"
  end

  test "creating a Grandma" do
    visit grandmas_url
    click_on "New Grandma"

    fill_in "Img url", with: @grandma.img_url
    fill_in "Name", with: @grandma.name
    fill_in "Password", with: @grandma.password
    fill_in "Username", with: @grandma.username
    click_on "Create Grandma"

    assert_text "Grandma was successfully created"
    click_on "Back"
  end

  test "updating a Grandma" do
    visit grandmas_url
    click_on "Edit", match: :first

    fill_in "Img url", with: @grandma.img_url
    fill_in "Name", with: @grandma.name
    fill_in "Password", with: @grandma.password
    fill_in "Username", with: @grandma.username
    click_on "Update Grandma"

    assert_text "Grandma was successfully updated"
    click_on "Back"
  end

  test "destroying a Grandma" do
    visit grandmas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grandma was successfully destroyed"
  end
end
