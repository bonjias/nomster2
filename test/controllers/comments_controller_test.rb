require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  

  test "Add your comment button" do
   		user = FactoryGirl.create(:user) 
   		sign_in user 
   		place = FactoryGirl.create(:place)

   		assert_difference 'place.comments.count' do
      	post :create, :place_id => place.id, :comment => {
        :rating  => '1_star',
        :message => 'This place sucks'
      		}
    			end

		assert_redirected_to place_path(place)
    	comment = Comment.last
    	assert_equal user, comment.user
  	end


end
