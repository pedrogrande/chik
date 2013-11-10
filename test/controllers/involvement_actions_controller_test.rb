require 'test_helper'

class InvolvementActionsControllerTest < ActionController::TestCase
  setup do
    @involvement_action = involvement_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:involvement_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create involvement_action" do
    assert_difference('InvolvementAction.count') do
      post :create, involvement_action: { description: @involvement_action.description, link: @involvement_action.link, priority: @involvement_action.priority, title: @involvement_action.title }
    end

    assert_redirected_to involvement_action_path(assigns(:involvement_action))
  end

  test "should show involvement_action" do
    get :show, id: @involvement_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @involvement_action
    assert_response :success
  end

  test "should update involvement_action" do
    patch :update, id: @involvement_action, involvement_action: { description: @involvement_action.description, link: @involvement_action.link, priority: @involvement_action.priority, title: @involvement_action.title }
    assert_redirected_to involvement_action_path(assigns(:involvement_action))
  end

  test "should destroy involvement_action" do
    assert_difference('InvolvementAction.count', -1) do
      delete :destroy, id: @involvement_action
    end

    assert_redirected_to involvement_actions_path
  end
end
