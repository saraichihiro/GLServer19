require 'test_helper'

class ScrumMembersControllerTest < ActionController::TestCase
  setup do
    @scrum_member = scrum_members(:one)
    @user = users(:lana)
    @scrum_member2 = scrum_members(:two)
    @user2 = users(:mallory)
    @project = projects(:one)

    set_current_project_id(@project)
  end

  test "should scrum_member get index" do
    get :index, project_id: @project
    assert_response :success
    assert_not_nil assigns(:scrum_members)
  end

  test "should scrum_member get new" do
    get :new, project_id: @project
    assert_response :success
  end

  test "should create scrum_member" do
    assert_difference('ScrumMember.count',+0) do
      post :create, project_id: get_current_project_id, scrum_member: {"0" => {selected_item: 1, name: @user.name, user_id: @scrum_member.user, role: @scrum_member.role}, "1" => {selected_item: 1, name: @user2.name, user_id: @scrum_member2.user, role: @scrum_member2.role}}
    end

    assert_redirected_to scrum_members_path(project_id: get_current_project_id)
  end

  test "should show scrum_member" do
    get :show, id: @scrum_member
    assert_response :success
  end

  test "should scrum_member get edit" do
    get :edit, id: @scrum_member
    assert_response :success
  end

  test "should update scrum_member" do
    patch :update, id: @scrum_member, scrum_member: { description: @scrum_member.description, project_id: @scrum_member.project_id, role: @scrum_member.role, user_id: @scrum_member.user_id }
    assert_redirected_to scrum_member_path(assigns(:scrum_member))
  end

  test "should destroy scrum_member" do
    assert_difference('ScrumMember.count', -1) do
      delete :destroy, id: @scrum_member
    end
    assert_redirected_to scrum_members_path(project_id: get_current_project_id)
  end
end
