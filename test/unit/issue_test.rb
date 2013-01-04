require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
  
  test "should not save issue without report_id" do
    issue = Issue.new
    assert !issue.save, "Saved the issue without a report_id"
  end
  
end
