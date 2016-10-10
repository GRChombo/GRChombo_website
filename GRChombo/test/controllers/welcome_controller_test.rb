require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  def setup
    @base_title = "GRChombo"
  end

  test "should get index" do
    get :index, page: 'index'
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get movies" do
    get :index, page: 'movies'
    assert_response :success
    assert_select "title", "Movies | #{@base_title}"
  end

  test "should get publications" do
    get :index, page: 'publications'
    assert_response :success
    assert_select "title", "Publications | #{@base_title}"
  end

  test "should get collaborators" do
    get :index, page: 'collaborators'
    assert_response :success
    assert_select "title", "Collaborators | #{@base_title}"
  end

end
