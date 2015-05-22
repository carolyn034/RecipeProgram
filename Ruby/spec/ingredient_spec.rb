require 'rspec'
require_relative '../app/models/ingredient'

describe Ingredient do

  it "should be able to accept a name" do
    new_ingredient = Ingredient.new(name: "chocolate")
    expect(new_ingredient.name).to eq("chocolate")
  end
end
