require 'test_helper'

class SprintsControllerTest < ActionController::TestCase
  setup do
    @sprint = sprints(:one)
    #@sprint3 = Sprint.new(id: 20, no: 3, description:"スプリントゴール", project: one, start: "2018-1-18",:end =>"2018-2-11")
    @project = projects(:one)
    @project3 = projects(:three)

    set_current_project_id(@project)
  end

  test "should get index" do
    get :index,project_id: @project
    assert_response :success
    assert_not_nil assigns(:sprints)
  end

  test "should sprints get new" do
    get :new, project_id:get_current_project_id 
    assert_response :success
  end

  test "should missmach sprints get new" do
    get :new, project_id:@project3.id
    assert_response :success
  end

  test "should no sprints get new" do
    get :new, project_id:@project3.id
    assert_response :success
  end

  test "should create sprint" do
    assert_difference('Sprint.count') do
      post :create, project_id:@project, sprint: {no: 4, project_id: @project.id, start: '2018-01-25', :end => '2018-02-10', description: "aaaaa"}
    end
    assert_redirected_to sprint_path(assigns(:sprint))
  end

  test "should miss create sprint" do
    assert_difference('Sprint.count',+0) do
      post :create, project_id:@project, sprint: {no: 4, project_id: @project.id, start: '2018-02-25', :end => '2018-01-10', description: "aaaaa"}
    end
  end

  test "should show sprint" do
    get :show, id: @sprint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sprint
    assert_response :success
  end

  test "should update sprint" do
    patch :update, id: @sprint, sprint: { description: @sprint.description, no: @sprint.no, project_id: @sprint.project_id }
    assert_redirected_to sprint_path(assigns(:sprint))
  end

  test "should miss update sprint" do
    patch :update, id: @sprint, sprint: {start: '2018-02-25', :end => '2018-01-10'}
    assert_response :success

  end

  test "should destroy sprint" do
    assert_difference('Sprint.count', -1) do
      delete :destroy,project_id:@project, id: @sprint
    end

    assert_redirected_to sprints_path(project_id:get_current_project_id)
  end
end
