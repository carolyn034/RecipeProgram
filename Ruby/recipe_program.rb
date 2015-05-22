require_relative 'config/application'
require_relative 'app/controllers/tasks_controller.rb'

recipe_controller = RecipeController.new

user_input = ARGV
command = user_input.shift
params = user_input.join(" ")

case command
  when "list" then recipe_controller.print_list_of_recipes
  when "add" then recipe_controller.add_to_list(params)
  when "delete" then recipe_controller.delete_from_list(params.to_i)
  else recipe_controller.help
end
