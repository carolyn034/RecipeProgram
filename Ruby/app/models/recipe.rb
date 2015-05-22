require_relative '../../db/config'

class Recipe < ActiveRecord::Base
  has_many :ingredient_recipe

  def to_s
   #how data will be printing to screen
  end
end
