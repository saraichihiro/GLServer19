require 'test_helper'

class AlphaAlphasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_alpha = alpha_alphas(:one)
  end

  test "should get index" do
    get alpha_alphas_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_alpha_url
    assert_response :success
  end

  test "should create alpha_alpha" do
    assert_difference('AlphaAlpha.count') do
      post alpha_alphas_url, params: { alpha_alpha: { alpha_alpha_def_id: @alpha_alpha.alpha_alpha_def_id, alpha_framework_id: @alpha_alpha.alpha_framework_id } }
    end

    assert_redirected_to alpha_alpha_url(AlphaAlpha.last)
  end

  test "should show alpha_alpha" do
    get alpha_alpha_url(@alpha_alpha)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_alpha_url(@alpha_alpha)
    assert_response :success
  end

  test "should update alpha_alpha" do
    patch alpha_alpha_url(@alpha_alpha), params: { alpha_alpha: { alpha_alpha_def_id: @alpha_alpha.alpha_alpha_def_id, alpha_framework_id: @alpha_alpha.alpha_framework_id } }
    assert_redirected_to alpha_alpha_url(@alpha_alpha)
  end

  test "should destroy alpha_alpha" do
    assert_difference('AlphaAlpha.count', -1) do
      delete alpha_alpha_url(@alpha_alpha)
    end

    assert_redirected_to alpha_alphas_url
  end
end
