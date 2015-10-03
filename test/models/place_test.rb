require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end



test "average rating" do 
user = FactoryGirl.create(:user)
    place = FactoryGirl.create(:place,:with_comments)
  
  expected = 'two stars'
  actual = place.average_rating

assert_equal expected,actual


end 



end
