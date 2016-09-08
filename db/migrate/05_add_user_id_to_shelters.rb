class AddUserIdToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :user_id, :integer
  end
end