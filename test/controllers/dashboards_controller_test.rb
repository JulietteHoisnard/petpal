require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get dashboards_view_url
    assert_response :success
  end

end
