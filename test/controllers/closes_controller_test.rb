require 'test_helper'

class ClosesControllerTest < ActionController::TestCase
  setup do
    @close = closes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:closes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create close" do
    assert_difference('Close.count') do
      post :create, close: {  }
    end

    assert_redirected_to close_path(assigns(:close))
  end

  test "should show close" do
    get :show, id: @close
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @close
    assert_response :success
  end

  test "should update close" do
    patch :update, id: @close, close: {  }
    assert_redirected_to close_path(assigns(:close))
  end

  test "should destroy close" do
    assert_difference('Close.count', -1) do
      delete :destroy, id: @close
    end

    assert_redirected_to closes_path
  end
end
