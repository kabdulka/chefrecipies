require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

	def setup
		@chef = Chef.create!(chefname: "kenan", email: "kenan@example.com")
		@recipe = Recipe.create(name: "Vegetable saute", description: "great vegetable saute, add vegetable and oil", chef: @chef)
		# Build doesn't hit the database
		@recipe2 = @chef.recipes.build(name: "chicken saute", description: "greate chicken dish")
		@recipe2.save
	end

	test "should get recipes index" do
		## try to replicate what we did to view the index page
		get recipes_url
		# recipes_path --> recipes_url will send a get request
		assert_response :success
	end

	test "should get recipes listing" do
		get recipes_path
		assert_template "recipes/index"
		## Want to see both these recipe names show up
		assert_match @recipe.name, response.body
		assert_match @recipe2.name, response.body
	end

  # test "the truth" do
  #   assert true
  # end



end































