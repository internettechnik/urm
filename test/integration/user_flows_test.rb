require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :users
  
  test "login and browse site" do
    #https! # login via https
     get "/login"
     assert_response :success
 
     post_via_redirect "/login", :username => users(:guest).username, :password => users(:guest).password
     assert_equal '/welcome', path
     assert_equal 'Welcome avs!', flash[:notice]
 
     https!(false)
     get "/posts/all"
     assert_response :success
     assert assigns(:products)
   end
   
end
