require "application_system_test_case"

class AppitemsTest < ApplicationSystemTestCase
  setup do
    @appitem = appitems(:one)
  end

  test "visiting the index" do
    visit appitems_url
    assert_selector "h1", text: "Appitems"
  end

  test "should create appitem" do
    visit appitems_url
    click_on "New appitem"

    fill_in "Color", with: @appitem.color
    fill_in "Default status", with: @appitem.default_status
    fill_in "Description", with: @appitem.description
    fill_in "Link", with: @appitem.link
    fill_in "Name", with: @appitem.name
    fill_in "Position", with: @appitem.position
    click_on "Create Appitem"

    assert_text "Appitem was successfully created"
    click_on "Back"
  end

  test "should update Appitem" do
    visit appitem_url(@appitem)
    click_on "Edit this appitem", match: :first

    fill_in "Color", with: @appitem.color
    fill_in "Default status", with: @appitem.default_status
    fill_in "Description", with: @appitem.description
    fill_in "Link", with: @appitem.link
    fill_in "Name", with: @appitem.name
    fill_in "Position", with: @appitem.position
    click_on "Update Appitem"

    assert_text "Appitem was successfully updated"
    click_on "Back"
  end

  test "should destroy Appitem" do
    visit appitem_url(@appitem)
    click_on "Destroy this appitem", match: :first

    assert_text "Appitem was successfully destroyed"
  end
end
