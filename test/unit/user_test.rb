require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  
  test "test the guest user" do
    guest = users(:guest)
    assert_not_nil guest
  end
  

  
end
