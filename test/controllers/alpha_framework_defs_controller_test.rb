require 'test_helper'

class AlphaFrameworkDefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_framework_def = alpha_framework_defs(:one)
  end

  test "should get index" do
    get alpha_framework_defs_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_framework_def_url
    assert_response :success
  end

  test "should create alpha_framework_def" do
    assert_difference('AlphaFrameworkDef.count') do
      post alpha_framework_defs_url, params: { alpha_framework_def: { ddescription: @alpha_framework_def.ddescription, dname: @alpha_framework_def.dname } }
    end

    assert_redirected_to alpha_framework_def_url(AlphaFrameworkDef.last)
  end

  test "should show alpha_framework_def" do
    get alpha_framework_def_url(@alpha_framework_def)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_framework_def_url(@alpha_framework_def)
    assert_response :success
  end

  test "should update alpha_framework_def" do
    patch alpha_framework_def_url(@alpha_framework_def), params: { alpha_framework_def: { ddescription: @alpha_framework_def.ddescription, dname: @alpha_framework_def.dname } }
    assert_redirected_to alpha_framework_def_url(@alpha_framework_def)
  end

  test "should destroy alpha_framework_def" do
    assert_difference('AlphaFrameworkDef.count', -1) do
      delete alpha_framework_def_url(@alpha_framework_def)
    end

    assert_redirected_to alpha_framework_defs_url
  end
end
