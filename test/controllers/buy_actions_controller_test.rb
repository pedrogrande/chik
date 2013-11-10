require 'test_helper'

class BuyActionsControllerTest < ActionController::TestCase
  setup do
    @buy_action = buy_actions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buy_actions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buy_action" do
    assert_difference('BuyAction.count') do
      post :create, buy_action: { description: @buy_action.description, link: @buy_action.link, priority: @buy_action.priority, title: @buy_action.title }
    end

    assert_redirected_to buy_action_path(assigns(:buy_action))
  end

  test "should show buy_action" do
    get :show, id: @buy_action
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buy_action
    assert_response :success
  end

  test "should update buy_action" do
    patch :update, id: @buy_action, buy_action: { description: @buy_action.description, link: @buy_action.link, priority: @buy_action.priority, title: @buy_action.title }
    assert_redirected_to buy_action_path(assigns(:buy_action))
  end

  test "should destroy buy_action" do
    assert_difference('BuyAction.count', -1) do
      delete :destroy, id: @buy_action
    end

    assert_redirected_to buy_actions_path
  end
end
