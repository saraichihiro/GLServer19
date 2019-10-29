require 'test_helper'

class AlphaStateDefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_state_def = alpha_state_defs(:one)
  end

  test "should get index" do
    get alpha_state_defs_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_state_def_url
    assert_response :success
  end

  test "should create alpha_state_def" do
    assert_difference('AlphaStateDef.count') do
      post alpha_state_defs_url, params: { alpha_state_def: { alpha_alpha_def_id: @alpha_state_def.alpha_alpha_def_id, ddescription: @alpha_state_def.ddescription, dname: @alpha_state_def.dname, dseq: @alpha_state_def.dseq } }
    end

    assert_redirected_to alpha_state_def_url(AlphaStateDef.last)
  end

  test "should show alpha_state_def" do
    get alpha_state_def_url(@alpha_state_def)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_state_def_url(@alpha_state_def)
    assert_response :success
  end

  test "should update alpha_state_def" do
    patch alpha_state_def_url(@alpha_state_def), params: { alpha_state_def: { alpha_alpha_def_id: @alpha_state_def.alpha_alpha_def_id, ddescription: @alpha_state_def.ddescription, dname: @alpha_state_def.dname, dseq: @alpha_state_def.dseq } }
    assert_redirected_to alpha_state_def_url(@alpha_state_def)
  end

  test "should destroy alpha_state_def" do
    assert_difference('AlphaStateDef.count', -1) do
      delete alpha_state_def_url(@alpha_state_def)
    end

    assert_redirected_to alpha_state_defs_url
  end
end
