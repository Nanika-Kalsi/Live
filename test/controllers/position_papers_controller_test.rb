require 'test_helper'

class PositionPapersControllerTest < ActionController::TestCase
  setup do
    @position_paper = position_papers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:position_papers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position_paper" do
    assert_difference('PositionPaper.count') do
      post :create, position_paper: {  }
    end

    assert_redirected_to position_paper_path(assigns(:position_paper))
  end

  test "should show position_paper" do
    get :show, id: @position_paper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position_paper
    assert_response :success
  end

  test "should update position_paper" do
    patch :update, id: @position_paper, position_paper: {  }
    assert_redirected_to position_paper_path(assigns(:position_paper))
  end

  test "should destroy position_paper" do
    assert_difference('PositionPaper.count', -1) do
      delete :destroy, id: @position_paper
    end

    assert_redirected_to position_papers_path
  end
end
