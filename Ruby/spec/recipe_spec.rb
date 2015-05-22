require 'rspec'
require_relative '../app/models/recipe'

describe Recipe do

  let(:new_recipe) { Recipe.new(name: "chocolate", course: "dessert", instructions: "eat the chocolate") }

  it "should be able to accept a name, course, instructions" do
    expect(new_recipe.name).to eq("chocolate")
    expect(new_recipe.course).to eq("dessert")
    expect(new_recipe.instructions).to eq("eat the chocolate")
  end

  describe "#to_s" do
    it "prints the task, nicely formatted" do
      expect(new_recipe.to_s).to eq(" #{new_recipe.id}. #{new_recipe.name}\n  #{new_recipe.course}\n  #{new_recipe.instructions}")
    end
  end
end
