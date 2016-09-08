class DropUserAttrsFromShelters < ActiveRecord::Migration
  def change
    remove_column :shelters, :username
    remove_column :shelters, :email
    remove_column :shelters, :password_digest
  end
end