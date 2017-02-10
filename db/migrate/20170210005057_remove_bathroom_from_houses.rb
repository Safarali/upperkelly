class RemoveBathroomFromHouses < ActiveRecord::Migration[5.0]
  def change
    remove_column :houses, :bathroom, :integer
  end
end
