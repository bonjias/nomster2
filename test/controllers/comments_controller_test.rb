require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  test "create comment requires logged in" do
   post :create, :place_id => 'omg'
    assert_redirected_to new_user_session_path
  end


end
