require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test " Humanized rating " do 
  	user = FactoryGirl.create(:user)
  	place = FactoryGirl.create(:place)
	comment = FactoryGirl.create(:comment)
	expect = 'one star'
	actual = comment.humanized_rating
	assert_equal expected,actual
	end 
end
