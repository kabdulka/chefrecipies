require 'test_helper'

class ChefTest < ActiveSupport::TestCase

	def setup
		@chef = Chef.new(chefname: "kenan", email: "kenan@example.com")
	end

	test "should be valid" do
		assert @chef.valid?
	end

	test "name should be present" do
		@chef.chefname = ""
		assert_not @chef.valid?
	end

	test "name shold be less than 30 characters" do
		@chef.chefname = "a" * 31
		assert_not @chef.valid?
	end

	test "email should be present" do
		@chef.email = " "
		assert_not @chef.valid?
	end

	test "email shouldn't be too long" do
		@chef.email = "a" * 245 + "@example.come"
		assert_not @chef.valid?
	end

	test "email should accept correct format" do
		## build array of correct valid email addresses
		## anything inside %w[] becomes an array
		valid_emails = %w[user@example.com Kenan@gmail.com M.first@yahoo.ca john+smith@co.uk.org]
		## iterate through the array and insert them as email address and 
		## ensure they're valid
		valid_emails.each do |valids|
			@chef.email = valids
			assert @chef.valid?, "#{valids.inspect} should be valid"
		end
	end

	test "should reject invalid addresses" do
		invalid_emails = %w[kenan@example kenan@example,com kenan.name@gmail. joe@bar+foo.com]
		invalid_emails.each do |invalids|
			@chef.email = invalids
			assert_not @chef.valid?, "#{invalids.inspect} should be valid"
		end
	end

	## Create a duplicate of the chef and we assign the email to the chef email
	test "email should be unique and case insensitive" do
		duplicate_chef = @chef.dup
		duplicate_chef.email = @chef.email.upcase
		@chef.save
		assert_not duplicate_chef.valid?
	end

	test "email should be case insensitive" do
		mixed_email = "JohN@example.com"
		@chef.email = mixed_email
		@chef.save
		assert_equal mixed_email.downcase, @chef.reload.email

	end

end






















