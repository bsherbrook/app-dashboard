require "test_helper"

class AppitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appitem = appitems(:one)
  end

  test "should get index" do
    get appitems_url
    assert_response :success
  end

  test "should get new" do
    get new_appitem_url
    assert_response :success
  end

  test "should create appitem" do
    assert_difference("Appitem.count") do
      post appitems_url, params: { appitem: { color: @appitem.color, default_status: @appitem.default_status, description: @appitem.description, link: @appitem.link, name: @appitem.name, position: @appitem.position } }
    end

    assert_redirected_to appitem_url(Appitem.last)
  end

  test "should show appitem" do
    get appitem_url(@appitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_appitem_url(@appitem)
    assert_response :success
  end

  test "should update appitem" do
    patch appitem_url(@appitem), params: { appitem: { color: @appitem.color, default_status: @appitem.default_status, description: @appitem.description, link: @appitem.link, name: @appitem.name, position: @appitem.position } }
    assert_redirected_to appitem_url(@appitem)
  end

  test "should destroy appitem" do
    assert_difference("Appitem.count", -1) do
      delete appitem_url(@appitem)
    end

    assert_redirected_to appitems_url
  end
end
