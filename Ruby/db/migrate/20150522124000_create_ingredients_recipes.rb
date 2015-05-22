require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateIngredientsRecipes < ActiveRecord::Migration
  def change
    create_table :ingredient_recipes, id: false do |t|
      t.string :quantity
      t.integer :recipe_id
      t.integer :ingredient_id
      t.belongs_to :ingredient, index: true
      t.belongs_to :recipe, index: true
      t.timestamps null:false
    end
  end
end
