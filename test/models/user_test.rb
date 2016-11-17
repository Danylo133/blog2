require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "shoud not sing up user without name" do
    user =User.new
    user.name = ""
    user.email = "fakeemail@email.com"
    user.password = "123456"
    assert_not user.save
  end

  test "shoud not sing up user with name les then 3" do
    user =User.new
    user.name = "Fake name"
    user.email = "fakeemail@email.com"
    user.password = "123456"
    assert user.save
  end

end
