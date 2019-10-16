require 'test_helper'

class ScrumMemberTest < ActiveSupport::TestCase
  
	def setup
		@scrum_member = ScrumMember.new(role: 1, description:"テスト", project_id: 1, user_id: 1)
	end


	test "should be valid" do
		assert @scrum_member.valid?
	end

	test "project_id should be present" do
		@scrum_member.project_id = " "
		assert_not @scrum_member.valid?
	end

	test "user_id should be present" do
		@scrum_member.user_id = " "
		assert_not @scrum_member.valid?
	end

end
