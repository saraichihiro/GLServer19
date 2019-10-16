require 'test_helper'

class SprintTest < ActiveSupport::TestCase

	def setup
		@sprint = Sprint.new(no: 1, description:"スプリントゴール", project_id: 1, start: "2018-1-18",:end =>"2018-2-11")
	end


	test "should be valid" do
		assert @sprint.valid?
	end

	test "project_id should be present" do
		@sprint.project_id = " "
		assert_not @sprint.valid?
	end

	test "start should be present" do
		@sprint.start = " "
		assert_not @sprint.valid?
	end

	test "end should be present" do
		@sprint.end = " "
		assert_not @sprint.valid?
	end

	test "date_check should be present" do
		@sprint.start = "2018-2-11"
		@sprint.end = "2018-1-17"
		assert_not @sprint.valid?
	end

end
