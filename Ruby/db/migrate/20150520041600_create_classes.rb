require_relative '../config'

class CreateClasses < ActiveRecord::Migration
  def change
    add_column :students do |t|
      t.belongs_to :teachers, index: true
    end
    add_column :teachers do |t|
      t.has_many :students, index: true
    end
  end
end
