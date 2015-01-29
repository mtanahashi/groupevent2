require 'test_helper'

class Group2sControllerTest < ActionController::TestCase
  setup do
    @group2 = group2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create group2" do
    assert_difference('Group2.count') do
      post :create, group2: { description: @group2.description, group_id_id: @group2.group_id_id, name: @group2.name, organization_date: @group2.organization_date }
    end

    assert_redirected_to group2_path(assigns(:group2))
  end

  test "should show group2" do
    get :show, id: @group2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @group2
    assert_response :success
  end

  test "should update group2" do
    patch :update, id: @group2, group2: { description: @group2.description, group_id_id: @group2.group_id_id, name: @group2.name, organization_date: @group2.organization_date }
    assert_redirected_to group2_path(assigns(:group2))
  end

  test "should destroy group2" do
    assert_difference('Group2.count', -1) do
      delete :destroy, id: @group2
    end

    assert_redirected_to group2s_path
  end
end
