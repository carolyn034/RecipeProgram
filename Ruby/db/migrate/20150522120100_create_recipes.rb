require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :instructions
      t.string :course
      t.integer :ingredient_recipe_id
      t.timestamps null:false
    end
  end
end
