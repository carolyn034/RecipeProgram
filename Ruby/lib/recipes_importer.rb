require_relative '../app/models/recipe'
require_relative '../app/models/ingredient'
require_relative '../app/models/ingredient_recipe'
require 'csv'


# module DataImporter
#   def self.import(filename=File.dirname(__FILE__) + "/../db/data/seed.csv")
#     field_names = nil
#     Student.transaction do
#       File.open(filename).each do |line|
#         data = line.chomp.split(',')
#         if field_names.nil?
#           field_names = data
#         else
#           attribute_hash = Hash[field_names.zip(data)]
#           student = Student.create!(attribute_hash)
#         end
#       end
#     end
#   end
# end
module DataImporter
  @arr_of_arrs = CSV.read("./db/data/seed.csv") do |row|
  end

  @arr_of_arrs.each do |recipe_array|
    recipe = Recipe.new
    recipe.title = recipe_array.shift
    recipe.course = recipe_array.shift
    recipe_array.each_with_index do |item, index|
      if index % 2 != 0
        ingredient = Ingredient.new
        ingredient.name = item.shift
      else
        ingredient_recipe = IngredientRecipe.new
        ingredient_recipe.quantity = item.shift
      end
    end
  end
end



#         recipe = Recipe.new

#     data.each do |item|
#         ingredient = ingredient.new
#         ingredient.name = data.shift
#         recipe_ingredient = RecipeIngredient.new
#         recipe_ingredient.quantity = data.shift
#         # data.each do |ingredient_id, ingredient_quantiy|
#         #   recipie.ingredient_recipies.build(ingredient_id: ingredient_id, recipied_id: recipe, quantity: ingredient_quantity)
#         # end
# end