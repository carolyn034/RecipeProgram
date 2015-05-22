require_relative '../config'

# this is where you should use an ActiveRecord migration to

class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.timestamps null:false
    end
  end
end
