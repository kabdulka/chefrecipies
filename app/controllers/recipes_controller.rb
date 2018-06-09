class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		## need to grab the id from the params hash that's getting submitted
		## in the get request
		## We'll find a recipe from the database by the id
		## since it's a hash we can grab it 
		@recipe = Recipe.find(params[:id])
	end

end


















