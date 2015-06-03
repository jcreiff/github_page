require 'test_helper'

class RepositoriesControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    post :show, username: "jcreiff"
    assert_response :success
  end

end
