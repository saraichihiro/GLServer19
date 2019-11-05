require 'test_helper'

class AlphaAlphaDefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_alpha_def = alpha_alpha_defs(:one)
  end

  test "should get index" do
    get alpha_alpha_defs_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_alpha_def_url
    assert_response :success
  end

  test "should create alpha_alpha_def" do
    assert_difference('AlphaAlphaDef.count') do
      post alpha_alpha_defs_url, params: { alpha_alpha_def: { alpha_framework_def_id: @alpha_alpha_def.alpha_framework_def_id, ddescription: @alpha_alpha_def.ddescription, dname: @alpha_alpha_def.dname, dseq: @alpha_alpha_def.dseq } }
    end

    assert_redirected_to alpha_alpha_def_url(AlphaAlphaDef.last)
  end

  test "should show alpha_alpha_def" do
    get alpha_alpha_def_url(@alpha_alpha_def)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_alpha_def_url(@alpha_alpha_def)
    assert_response :success
  end

  test "should update alpha_alpha_def" do
    patch alpha_alpha_def_url(@alpha_alpha_def), params: { alpha_alpha_def: { alpha_framework_def_id: @alpha_alpha_def.alpha_framework_def_id, ddescription: @alpha_alpha_def.ddescription, dname: @alpha_alpha_def.dname, dseq: @alpha_alpha_def.dseq } }
    assert_redirected_to alpha_alpha_def_url(@alpha_alpha_def)
  end

  test "should destroy alpha_alpha_def" do
    assert_difference('AlphaAlphaDef.count', -1) do
      delete alpha_alpha_def_url(@alpha_alpha_def)
    end

    assert_redirected_to alpha_alpha_defs_url
  end
end
