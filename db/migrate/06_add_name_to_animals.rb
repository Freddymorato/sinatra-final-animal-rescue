class AddNameToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :name, :string
  end
end