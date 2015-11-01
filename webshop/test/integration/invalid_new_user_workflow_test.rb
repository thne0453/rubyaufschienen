require 'test_helper'

class InvalidNewUserWorkflowTest < ActionDispatch::IntegrationTest

  fixtures :all

  test 'try to create a new empty user and check for flash error messages' do
    get '/users/new'
    assert_response :success

    post_via_redirect "/users", :last_name => "Oberhuber" 
    assert_equal '/users', path
    assert_select 'li', "Login name can't be blank"
    assert_select 'li', "Login name must include at least one of the special characters -_."
  end
end