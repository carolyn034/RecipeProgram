require_relative '../../db/config'

class Recipe < ActiveRecord::Base
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes

  def to_s
   #how data will be printing to screen
  end
end
