require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
	test "that /login opens login page" do 
		get '/login'
		assert_response :success
		
	end

		test "that /logou opens logout page" do 
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/'
	end

		test "that /register opens register page" do 
		get '/register'
		assert_response :success
		
	end
end
