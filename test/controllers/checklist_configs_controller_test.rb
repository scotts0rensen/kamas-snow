require 'test_helper'

class ChecklistConfigsControllerTest < ActionController::TestCase
  setup do
    @checklist_config = checklist_configs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:checklist_configs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create checklist_config" do
    assert_difference('ChecklistConfig.count') do
      post :create, checklist_config: {  }
    end

    assert_redirected_to checklist_config_path(assigns(:checklist_config))
  end

  test "should show checklist_config" do
    get :show, id: @checklist_config
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @checklist_config
    assert_response :success
  end

  test "should update checklist_config" do
    patch :update, id: @checklist_config, checklist_config: {  }
    assert_redirected_to checklist_config_path(assigns(:checklist_config))
  end

  test "should destroy checklist_config" do
    assert_difference('ChecklistConfig.count', -1) do
      delete :destroy, id: @checklist_config
    end

    assert_redirected_to checklist_configs_path
  end
end
