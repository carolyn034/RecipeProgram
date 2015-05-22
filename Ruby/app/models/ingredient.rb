require_relative '../../db/config'

class Ingredient < ActiveRecord::Base
  has_many :ingredient_recipe
  has_many :recipe, through: :ingredient_recipe
end
