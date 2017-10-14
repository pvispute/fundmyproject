require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get howitworks" do
    get pages_howitworks_url
    assert_response :success
  end

end
