class AddShelterIdToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :shelter_id, :integer
  end
end