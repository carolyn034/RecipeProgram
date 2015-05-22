require_relative '../../db/config'

class IngredientRecipe < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :ingredient

  def return_qty
    #take ingredients and return with qty for shopping list
  end
end
