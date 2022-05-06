require 'test_helper'

class AuthersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authers_index_url
    assert_response :success
  end

end
