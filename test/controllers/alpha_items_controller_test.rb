require 'test_helper'

class AlphaItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_item = alpha_items(:one)
  end

  test "should get index" do
    get alpha_items_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_item_url
    assert_response :success
  end

  test "should create alpha_item" do
    assert_difference('AlphaItem.count') do
      post alpha_items_url, params: { alpha_item: { alpha_item_def_id: @alpha_item.alpha_item_def_id, alpha_state_id: @alpha_item.alpha_state_id, completed: @alpha_item.completed, completed_at: @alpha_item.completed_at } }
    end

    assert_redirected_to alpha_item_url(AlphaItem.last)
  end

  test "should show alpha_item" do
    get alpha_item_url(@alpha_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_item_url(@alpha_item)
    assert_response :success
  end

  test "should update alpha_item" do
    patch alpha_item_url(@alpha_item), params: { alpha_item: { alpha_item_def_id: @alpha_item.alpha_item_def_id, alpha_state_id: @alpha_item.alpha_state_id, completed: @alpha_item.completed, completed_at: @alpha_item.completed_at } }
    assert_redirected_to alpha_item_url(@alpha_item)
  end

  test "should destroy alpha_item" do
    assert_difference('AlphaItem.count', -1) do
      delete alpha_item_url(@alpha_item)
    end

    assert_redirected_to alpha_items_url
  end
end
