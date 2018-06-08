class AddChefIdToRecipes < ActiveRecord::Migration[5.0]
  def change
  	# if it were a user table we'd use a user id but since
  	# we have a chef table we use a chef id
  	add_column :recipes, :chef_id, :integer
  end
end
