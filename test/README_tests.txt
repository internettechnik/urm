# run all the tests:
#  bundle exec ruby  -Itest test/**/*.rb

# see for all available assertions
#  http://guides.rubyonrails.org/testing.html#assertions-available


# unit tests = test models
#              (and their helper class functionality)
# first samples to be found in 
#  unit/helpers/question_helper_test.rb


# functional tests = test actions of a single controller
# first samples can be found in 
#  functional/projects_controller_test.rb

# integration tests = test the interaction among any number of controllers (test a work flow)
# (Note: to be created with "rails generate integration_test user_flows")
# first sample can be found in
#  integration/user_flows_test.rb




# Note for the curious: 
#	https://www.relishapp.com/rspec an
#	https://github.com/cucumber/cucumber
#	http://rubygems.org/gems/webrat