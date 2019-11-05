require 'test_helper'

class AlphaStatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_state = alpha_states(:one)
  end

  test "should get index" do
    get alpha_states_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_state_url
    assert_response :success
  end

  test "should create alpha_state" do
    assert_difference('AlphaState.count') do
      post alpha_states_url, params: { alpha_state: { alpha_alpha_id: @alpha_state.alpha_alpha_id, alpha_state_def_id: @alpha_state.alpha_state_def_id, completed: @alpha_state.completed, completed_at: @alpha_state.completed_at, completed_items: @alpha_state.completed_items } }
    end

    assert_redirected_to alpha_state_url(AlphaState.last)
  end

  test "should show alpha_state" do
    get alpha_state_url(@alpha_state)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_state_url(@alpha_state)
    assert_response :success
  end

  test "should update alpha_state" do
    patch alpha_state_url(@alpha_state), params: { alpha_state: { alpha_alpha_id: @alpha_state.alpha_alpha_id, alpha_state_def_id: @alpha_state.alpha_state_def_id, completed: @alpha_state.completed, completed_at: @alpha_state.completed_at, completed_items: @alpha_state.completed_items } }
    assert_redirected_to alpha_state_url(@alpha_state)
  end

  test "should destroy alpha_state" do
    assert_difference('AlphaState.count', -1) do
      delete alpha_state_url(@alpha_state)
    end

    assert_redirected_to alpha_states_url
  end
end
