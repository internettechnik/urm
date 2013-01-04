require 'test_helper'
# see for all available assertions
# http://guides.rubyonrails.org/testing.html#assertions-available

class QuestionHelperTest < ActionView::TestCase
  
   # called before every single test
   def setup
     @report = reports(:one)
     q1=questions(:one)
     q2=questions(:two)
     @report.questions << q1
     #puts "we created report #{@report}"
   end
 
   # called after every single test
   def teardown
     # as we are re-initializing @post before every test
     # setting it to nil here is not essential but I hope
     # you understand how you can use the teardown method
     @report = nil
   end
   
  test "short summary 'allquestions' of an empty report" do   
    report = reports(:empty)
    sum=allquestions_summary(report)
    #puts " allquestions returns '#{sum}'"
    assert_not_nil sum, "Even for a report with no questions, we assume a (maybe empty) string"
    assert sum == '(0): ', "Even for a report with no questions, we assume string"
  end
  
  test "short summary 'allquestions' of a nonempty report" do   
    sum=allquestions_summary(@report) 
    #puts " allquestions returns '#{sum}'"
    assert_no_match /(0)/, sum, "A report with some questions must not return an empty string"
    assert sum=='(1): 1: MyText', "A report with some questions must not return summary-string"
  end

  
end
