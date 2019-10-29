require 'test_helper'

class AlphaItemDefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_item_def = alpha_item_defs(:one)
  end

  test "should get index" do
    get alpha_item_defs_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_item_def_url
    assert_response :success
  end

  test "should create alpha_item_def" do
    assert_difference('AlphaItemDef.count') do
      post alpha_item_defs_url, params: { alpha_item_def: { alpha_state_def_id: @alpha_item_def.alpha_state_def_id, ddescription: @alpha_item_def.ddescription, dseq: @alpha_item_def.dseq } }
    end

    assert_redirected_to alpha_item_def_url(AlphaItemDef.last)
  end

  test "should show alpha_item_def" do
    get alpha_item_def_url(@alpha_item_def)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_item_def_url(@alpha_item_def)
    assert_response :success
  end

  test "should update alpha_item_def" do
    patch alpha_item_def_url(@alpha_item_def), params: { alpha_item_def: { alpha_state_def_id: @alpha_item_def.alpha_state_def_id, ddescription: @alpha_item_def.ddescription, dseq: @alpha_item_def.dseq } }
    assert_redirected_to alpha_item_def_url(@alpha_item_def)
  end

  test "should destroy alpha_item_def" do
    assert_difference('AlphaItemDef.count', -1) do
      delete alpha_item_def_url(@alpha_item_def)
    end

    assert_redirected_to alpha_item_defs_url
  end
end
