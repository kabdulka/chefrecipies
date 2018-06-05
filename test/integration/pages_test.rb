require 'test_helper'
## Typing rails test runs all tests in our test folder
class PagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "should get home" do
  	get pages_home_url
  	## onces we get that route we assert response
  	assert_response :success
  end

  ## test for root route
  test "should get root" do
  	get root_url
  	assert_response :success
  end

end































