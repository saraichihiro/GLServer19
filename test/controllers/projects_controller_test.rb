require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    @project2 = projects(:two)
    @user = users(:lana)

    set_current_project_id(@project)
  end

  test "should projects get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "should projects get new" do
    get :new
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count', +1) do
      post :create, project: {name: "F4005", start: '2018-01-25', :end => '2018-02-11', length: 7, description: "My Text"}
    end
    assert_redirected_to project_path(assigns(:project))
  end

   test "should miss create project" do
    assert_difference('Project.count', +0) do
      post :create, project: {name: "F4005", start: '2018-02-25', :end => '2018-02-11', length: 7, description: "My Text"}
    end
  end

  test "should show project" do
    log_in_as @user
    get :show, id: @project
    assert_response :success
  end

  test "should project get edit" do
    get :edit, id: @project
    assert_response :success
  end

  test "should update project" do
    patch :update, id: @project, project: {start: '2018-01-25', :end => '2018-02-25'}
    assert_redirected_to project_path(assigns(:project))
  end

   test "should miss update project" do
    patch :update, id: @project, project: {start: '2018-02-25', :end => '2018-01-25'}
    assert_response :success
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end
    assert_redirected_to projects_path
  end

end
