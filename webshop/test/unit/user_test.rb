require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'an empty user is not valid' do
    assert !User.new.valid?, 'Saved an empty user.'
  end

  test "the two fixture users are valid" do
    assert User.new(last_name: users(:one).last_name, login_name: users(:one).login_name ).valid?, 'First fixture is not valid.'
    assert User.new(last_name: users(:two).last_name, login_name: users(:two).login_name ).valid?, 'Second fixture is not valid.'
  end
  
  [
    'hans.meier',
    'hans-meier',
    'ab'
  ].each do |valid_login_name|
    test "the login_name '#{valid_login_name}' is valid" do
      assert User.new(last_name: users(:one).last_name, login_name: valid_login_name ).valid?, "login_name '#{valid_login_name}' is not valid."
    end
  end
  
end