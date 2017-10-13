require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get get" do
    get index_get_url
    assert_response :success
  end

end
