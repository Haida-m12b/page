require 'test_helper'

class ListControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #side a', :minimum => 4
assert_select '#main .entry', 3
assert_select 'h3', 'Content management system(CMS).'

  end

end
