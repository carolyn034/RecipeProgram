require_relative '../app/models/recipe'
require_relative '../app/models/ingredient'
require_relative '../app/models/ingredient_recipe'
require 'csv'



module DataImporter
  def self.import
    @arr_of_arrs = CSV.read("./db/data/seed.csv")
    p @arr_of_arrs


    @arr_of_arrs.each do |recipe_array|
      Recipe.create(:title => )
    #   recipe = Recipe.new
    #   recipe.title = recipe_array.shift
    #   recipe.course = recipe_array.shift
    #   recipe_array.each_with_index do |item, index|
    #     if index % 2 != 0
    #       ingredient = Ingredient.new
    #       ingredient.name = item.shift
    #     else
    #       ingredient_recipe = IngredientRecipe.new
    #       ingredient_recipe.quantity = item.shift
    #     end
    #   end
    end
  end
end
