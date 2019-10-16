require 'test_helper'

class ProjectTest < ActiveSupport::TestCase


	def setup
    @project = Project.new(name: "Example project", start: "2018-1-17", :end => "2018-2-11", length: "7", description: "",)
    end


  test "should be valid" do
    assert @project.valid?
  end

  test "name should be present" do
    @project.name = " "
    assert_not @project.valid?
  end

  test "length should be present" do
    @project.length = " "
    assert_not @project.valid?
  end

  test "start should be present" do
    @project.start = " "
    assert_not @project.valid?
  end

  test "end should be present" do
    @project.end = " "
    assert_not @project.valid?
  end

  test "length_zero should be present" do
    @project.length = "0"
    assert_not @project.valid?
  end

  test "date_check should be present" do
    @project.start = "2018-2-11"
    @project.end = "2018-1-17"
    assert_not @project.valid?
  end

  test "name should not be too long" do
    @project.name = "a" * 51
    assert_not @project.valid?
  end

end
