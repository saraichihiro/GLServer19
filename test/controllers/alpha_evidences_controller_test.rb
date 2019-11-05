require 'test_helper'

class AlphaEvidencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alpha_evidence = alpha_evidences(:one)
  end

  test "should get index" do
    get alpha_evidences_url
    assert_response :success
  end

  test "should get new" do
    get new_alpha_evidence_url
    assert_response :success
  end

  test "should create alpha_evidence" do
    assert_difference('AlphaEvidence.count') do
      post alpha_evidences_url, params: { alpha_evidence: { alpha_item_id: @alpha_evidence.alpha_item_id, document: @alpha_evidence.document, scrum_member_id: @alpha_evidence.scrum_member_id } }
    end

    assert_redirected_to alpha_evidence_url(AlphaEvidence.last)
  end

  test "should show alpha_evidence" do
    get alpha_evidence_url(@alpha_evidence)
    assert_response :success
  end

  test "should get edit" do
    get edit_alpha_evidence_url(@alpha_evidence)
    assert_response :success
  end

  test "should update alpha_evidence" do
    patch alpha_evidence_url(@alpha_evidence), params: { alpha_evidence: { alpha_item_id: @alpha_evidence.alpha_item_id, document: @alpha_evidence.document, scrum_member_id: @alpha_evidence.scrum_member_id } }
    assert_redirected_to alpha_evidence_url(@alpha_evidence)
  end

  test "should destroy alpha_evidence" do
    assert_difference('AlphaEvidence.count', -1) do
      delete alpha_evidence_url(@alpha_evidence)
    end

    assert_redirected_to alpha_evidences_url
  end
end
