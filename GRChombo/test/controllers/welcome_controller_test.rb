require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index, page: 'index'
    assert_response :success
  end
  test "should get movies" do
    get :index, page: 'movies'
    assert_response :success
  end
  test "should get publications" do
    get :index, page: 'publications'
    assert_response :success
  end
  test "should get collaborators" do
    get :index, page: 'collaborators'
    assert_response :success
  end

end
