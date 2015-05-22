require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredients_recipes do |t|
      t.string :quantity
      t.integer :recipe_id
      t.integer :ingredient_id
      t.timestamps null:false
    end
  end
end
