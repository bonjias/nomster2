require 'test_helper'

class UsersControllerTest < ActionController::TestCase
 test "user id page" do
    user = FactoryGirl.create(:user)
    sign_in user
  	place = FactoryGirl.create(:place)

  	get :show, :id =>  user.id
    assert_response :success
  end
end
