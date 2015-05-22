require_relative '../../db/config'

class RecipeController < ActiveRecord::Base

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
