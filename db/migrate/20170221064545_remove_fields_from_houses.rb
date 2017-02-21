class RemoveFieldsFromHouses < ActiveRecord::Migration[5.0]
  def change
    remove_column :houses, :latitude, :float
    remove_column :houses, :longitude, :float
  end
end
