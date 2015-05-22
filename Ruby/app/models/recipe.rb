require_relative '../../db/config'

class Recipe < ActiveRecord::Base

  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes

  def to_s
   "\n#{self.title}  |#{self.course}|\n#{print_ingredient}"
  end

  def print_ingredient
    self.ingredients.map { |ingredient| ingredient.name}
  end
end
