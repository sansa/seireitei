require 'test_helper'

class Txtboss::UserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get txtboss_user_index_url
    assert_response :success
  end

end
