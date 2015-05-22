require_relative '../app/models/recipe'
require_relative '../app/models/ingredient'
require_relative '../app/models/ingredient_recipe'

# load './app/models/recipe.rb'
# load './app/models/ingredient.rb'
# load './app/models/ingredient_recipe.rb'


data = [
  {
    title: "pumpkin pie",
    course: "dessert",
    ingredients: [
      {name: "flour", quantity: "150g"},
      {name: "salt", quantity: ."25tsp"},
      {name: "unsalted butter", quantity: "10tblsp"},
      {name: "ice water", quantity: "3tblsp"},
      {name: "pumpkin", quantity: "1.75cups"},
      {name: "eggs", quantity: "3"},
      {name: "heavy cream", quantity: "1cup"},
      {name: "dark brown sugar", quantity: "153g"},
      {name: "brandy", quantity: "2tblsp"},
      {name: "ground ginger", quantity: "4g"},
      {name: "ground cinnamon", quantity: "3g"},
      {name: "kosher salt", quantity: "3g"},
      {name: "grated nutmeg", quantity: ".25tsp"},
      {name: "ground clove", quantity: "1pinch"}
    ]
  },

  {
    title: "apple crumble",
    course: "dessert", ingredients: [
      {name: "thinly-sliced apples", quantity: "2quarts"},
       {name: "turbinado sugar", quantity: "2tblsp"},
       {name: "lemon juice", quantity: "1tblsp"},
       {name: "cinnamon", quantity: ".5tsp"},
       {name: "nutmeg", quantity: ".25tsp"},
       {name: "vanilla extract", quantity: "1tsp"},
       {name: "rolled oats", quantity: "1.25cups"},
       {name: "quinoa flour", quantity: ".5cups"},
       {name: "turbinado sugar", quantity: ".66cups"},
       {name: "grated nutmeg", quantity: {".5tsp"},
       {name: "salt", quantity: ".25tsp"},
       {name: "butter", quantity: "6tblsp"}
      ]
    },
    {
      title: "chocolate avocado mousse",
      course: "dessert",
      ingredients: [
        {name: "avocado", quantity: "2firm"},
        {name: "dark chocolate", quantity: "200g"},
        {name: "honey", quantity: "3tblsp"},
        {name: "coconut milk", quantity: ".66cup"},
        {name: "fresh berries", quantity: "to garnish"}
      ]
    },
    {
      title: "flourless cacao cake",
      course: "dessert",
      ingredients: [
        {name: "coconut oil", quantity: "250g"},
        {name: "raw cacao powder", quantity: "100g"},
        {name: "rice malt syrup", quantity: "180g"},
        {name: "seperated eggs", quantity: "6"},
        {name: "rapadura sugar", quantity: "220g"},
        {name: "almond meal", quantity: "120g"}
      ]
    }

]

  data.each do |recipe_hash|
    recipe = Recipe.create(title: recipe_hash[:title], course:recipe_hash[:course])
    recipe_hash[:ingredients].each do |item|
      unless ingredient = Ingredient.find_by(name: item[:name])
        ingredient = Ingredient.create(name: item[:name])
      end
      IngredientRecipe.create(quantity: item[:quantity], recipe_id: recipe.id, ingredient_id: ingredient.id)
    end
  end

