require 'test_helper'
class StaticPagesControllerTest < ActionDispatch::IntegrationTest
    test "should get root" do
        get root_url
        assert_response :success
        assert_select "title", "Home"
    end
    # test "should get home" do
    #     get static_pages_home_url
    #     assert_response :success
    #     assert_select "title", "Home"
    # end
end
