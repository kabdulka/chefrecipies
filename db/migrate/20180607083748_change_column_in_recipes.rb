class ChangeColumnInRecipes < ActiveRecord::Migration[5.0]
  def change
  	## rename column name from recipes to description
  	rename_column :recipes, :email, :description
  	change_column :recipes, :description, :text
  end
end
