require 'test_helper'

class AccountHistorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get account_historys_index_url
    assert_response :success
  end

  test "should get show" do
    get account_historys_show_url
    assert_response :success
  end

  test "should get edit" do
    get account_historys_edit_url
    assert_response :success
  end

  test "should get new" do
    get account_historys_new_url
    assert_response :success
  end

end
