require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
      get register_path
      assert_no_difference 'User.count' do
          post users_path, params: {user:{name: " ", email: "user@invalid", password: "foo", password_confirmation: "combo"}}
      end
      assert_template 'users/new'
    #   assert_select 'div#<CSS id for error explanation>'
    #   assert_select 'div.<CSS class for field with error>'
  end
  test "valid signup information" do
      get register_path
      assert_difference 'User.count', 1 do
          post users_path, params:{user:{name: "John Doe", email: "example@example.com", password: "passw0rd", password_confirmation: "passw0rd"}}
      end
      follow_redirect!
      assert_template 'users/show'
      assert is_signed_in?
  end
end
