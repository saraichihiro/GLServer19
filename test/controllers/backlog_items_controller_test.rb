require 'test_helper'

class BacklogItemsControllerTest < ActionController::TestCase
  setup do
    @user = users(:lana)
    log_in_as @user
    @backlog_item_pbl = backlog_items(:one)
    @backlog_item_sbl = backlog_items(:two)
    @scrum_member = scrum_members(:one)
    @backlog_item_pbl.blog_author_id = @scrum_member.id
    @backlog_item_pbl.assign_to_id = @scrum_member.id
    @backlog_item_sbl.blog_author_id = @scrum_member.id
    @backlog_item_sbl.assign_to_id = @scrum_member.id
    @backlog_item_sbl.backlog_item_id = @backlog_item_pbl.id


    @sprint = sprints(:one)
    @project = projects(:one)
    set_current_project_id(@project)
    set_current_sprint_id

    @project3 = projects(:three)
  end

  test "should get index_pbl" do
    get :index_pbl,project_id: get_current_project_id
    assert_response :success
    assert_not_nil assigns(:backlog_items)
  end

  test "should get index_sbl" do
    get :index_sbl,sprint_id: get_current_sprint_id
    assert_response :success
    assert_not_nil assigns(:backlog_items)
  end

  test "should get new_pbl" do
    get :new_pbl,project_id: get_current_project_id
    assert_response :success
  end

  test "should get new_sbl" do
    get :new_sbl,backlog_item_id: @backlog_item_pbl.id
    assert_response :success
  end

  test "should no get new_pbl" do
    get :new_pbl,project_id: @project3.id
    assert_response :success
  end

  test "should no get new_sbl" do
    get :new_sbl,backlog_item_id: @backlog_item_pbl.id
    assert_response :success
  end

  test "should create backlog_item_pbl" do
    assert_difference('BacklogItem.count') do
      post :create, project_id: get_current_project_id,backlog_item: { itemType: 0,dev_type: "バグ", state: 1, estimate: 3,started_at: '2018-01-25', ended_at: '2018-02-13', description: "MyText", supplement: "MyText", priority: "up", value: 3,project_id: @project.id, sprint_id: @sprint.id, blog_author_id: @scrum_member.id}
    end

    assert_redirected_to pbl_path(get_current_project_id)
  end

test "should create backlog_item_sbl" do
    assert_difference('BacklogItem.count') do
      post :create, project_id: get_current_project_id,backlog_item: { itemType: 1,dev_type: "バグ", state: 1, estimate: 3, description: "MyText", supplement: "MyText", priority: "up", value: 3,project_id: @project.id, sprint_id: @sprint.id, backlog_item_id: @backlog_item_pbl, blog_author_id: @scrum_member.id}
    end

    assert_redirected_to show_pbl_path(assigns(:backlog_item).backlog_item_id)
  end

  test "should show_pbl backlog_item" do
    get :show_pbl, id: @backlog_item_pbl.id
    assert_response :success
  end

  test "should show_sbl backlog_item" do
    get :show_sbl, id: @backlog_item_sbl
    assert_response :success
  end

  test "should get edit_pbl" do
    get :edit_pbl, id: @backlog_item_pbl
    assert_response :success
  end

  test "should get edit_sbl" do
    get :edit_sbl, id: @backlog_item_sbl
    assert_response :success
  end

  test "should update backlog_item" do
    patch :update, id: @backlog_item_pbl, backlog_item: { create_at: @backlog_item_pbl.create_at, description: @backlog_item_pbl.description, ended_at: @backlog_item_pbl.ended_at, estimate: @backlog_item_pbl.estimate, itemType: @backlog_item_pbl.itemType, no: @backlog_item_pbl.no, priority: @backlog_item_pbl.priority, seq: @backlog_item_pbl.seq, started_at: @backlog_item_pbl.started_at, state: @backlog_item_pbl.state, supplement: @backlog_item_pbl.supplement, dev_type: @backlog_item_pbl.dev_type, value: @backlog_item_pbl.value }
    assert_redirected_to show_pbl_path(assigns(:backlog_item))
  end

  test "should destroy backlog_item" do
    assert_difference('BacklogItem.count', -1) do
      delete :destroy, id: @backlog_item_pbl
    end
    assert_redirected_to pbl_path(get_current_project_id)
  end
end
