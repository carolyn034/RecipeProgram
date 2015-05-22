require_relative '../../db/config'
require_relative '../models/recipe'
require_relative '../models/ingredient'
require_relative '../models/ingredient_recipe'

class RecipeController

  def print_list_of_recipes
    puts Recipe.all
  end

  def shoping_list
    #printing of ingredients with qty
  end

  def help
    # shows methods avalible for users
  end

  def select_ingredients
    #select ingredients taged to recipe
  end
end
