require 'test_helper'

class Event2sControllerTest < ActionController::TestCase
  setup do
    @event2 = event2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event2" do
    assert_difference('Event2.count') do
      post :create, event2: { description: @event2.description, event_date: @event2.event_date, group_id: @event2.group_id, name: @event2.name }
    end

    assert_redirected_to event2_path(assigns(:event2))
  end

  test "should show event2" do
    get :show, id: @event2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event2
    assert_response :success
  end

  test "should update event2" do
    patch :update, id: @event2, event2: { description: @event2.description, event_date: @event2.event_date, group_id: @event2.group_id, name: @event2.name }
    assert_redirected_to event2_path(assigns(:event2))
  end

  test "should destroy event2" do
    assert_difference('Event2.count', -1) do
      delete :destroy, id: @event2
    end

    assert_redirected_to event2s_path
  end
end
