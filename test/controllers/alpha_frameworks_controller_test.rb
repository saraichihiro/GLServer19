require 'test_helper'

class AlphaFrameworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_framework = alpha_frameworks(:one)
  end

  test "should get index" do
    get alpha_frameworks_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_framework_url
    assert_response :success
  end

  test "should create alpha_framework" do
    assert_difference('AlphaFramework.count') do
      post alpha_frameworks_url, params: { alpha_framework: { alpha_framework_def_id: @alpha_framework.alpha_framework_def_id, project_id: @alpha_framework.project_id } }
    end

    assert_redirected_to alpha_framework_url(AlphaFramework.last)
  end

  test "should show alpha_framework" do
    get alpha_framework_url(@alpha_framework)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_framework_url(@alpha_framework)
    assert_response :success
  end

  test "should update alpha_framework" do
    patch alpha_framework_url(@alpha_framework), params: { alpha_framework: { alpha_framework_def_id: @alpha_framework.alpha_framework_def_id, project_id: @alpha_framework.project_id } }
    assert_redirected_to alpha_framework_url(@alpha_framework)
  end

  test "should destroy alpha_framework" do
    assert_difference('AlphaFramework.count', -1) do
      delete alpha_framework_url(@alpha_framework)
    end

    assert_redirected_to alpha_frameworks_url
  end
end
