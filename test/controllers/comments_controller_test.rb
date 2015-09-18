require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test " Add your comment button " do
   user = FactoryGirl.create(:user)
    sign_in user
  	place = FactoryGirl.create(:place)
  	comment = FactoryGirl.create(:comment)
end 


end
