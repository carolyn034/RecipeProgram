require_relative '../../db/config'

class Ingredient < ActiveRecord::Base

  has_many :ingredient_recipes
  has_many :recipes, through: :ingredient_recipes

  def select_ingredients
    #select ingredients taged to recipe
  end

end
