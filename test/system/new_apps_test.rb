require "application_system_test_case"

class NewAppsTest < ApplicationSystemTestCase
  setup do
    @new_app = new_apps(:one)
  end

  test "visiting the index" do
    visit new_apps_url
    assert_selector "h1", text: "New apps"
  end

  test "should create new app" do
    visit new_apps_url
    click_on "New new app"

    fill_in "Color", with: @new_app.color
    fill_in "Description", with: @new_app.description
    fill_in "Link", with: @new_app.link
    fill_in "Name", with: @new_app.name
    fill_in "Position", with: @new_app.position
    click_on "Create New app"

    assert_text "New app was successfully created"
    click_on "Back"
  end

  test "should update New app" do
    visit new_app_url(@new_app)
    click_on "Edit this new app", match: :first

    fill_in "Color", with: @new_app.color
    fill_in "Description", with: @new_app.description
    fill_in "Link", with: @new_app.link
    fill_in "Name", with: @new_app.name
    fill_in "Position", with: @new_app.position
    click_on "Update New app"

    assert_text "New app was successfully updated"
    click_on "Back"
  end

  test "should destroy New app" do
    visit new_app_url(@new_app)
    click_on "Destroy this new app", match: :first

    assert_text "New app was successfully destroyed"
  end
end
