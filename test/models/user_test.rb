require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@testuser = User.new(name:"Tony Chu", email:"dike.kf.chu@gmail.com", password: "testing", password_confirmation: "testing")
  end

  test "Basic validation" do
  	
  	assert @testuser.valid?
  end

  test "email validation" do
  	valid_addresses = %w[test@example.com USER@foo.COM U_SER@foo.bar.org US+ER@wmz.ca]
  	valid_addresses.each do |address|
  		@testuser.email = address
  		assert @testuser.valid?, "#{address.inspect} should be valid"
  	end
  end

  test "email invalids" do
  	invalid_addresses = %w[test@example,com google.com user.name@emample. test_at_fdsf_.com test_AT_mvd.com]
  	invalid_addresses.each do |address|
  		@testuser.email = address
  		assert_not @testuser.valid?, "#{address.inspect} should not be valid"
  	end
  end

  test "unique email" do
  	duplicate_user = @testuser.dup
  	duplicate_user.email = duplicate_user.email.upcase
  	@testuser.save
  	assert_not duplicate_user.valid?
  end

  test "password should have a minimum of 6" do
  	@testuser.password = @testuser.password_confirmation = "a" * 5
    assert_not @testuser.valid?
  end

  test "password is required" do
  	@testuser.password = @testuser.password_confirmation = ""
  	assert_not @testuser.valid?
  end
end
