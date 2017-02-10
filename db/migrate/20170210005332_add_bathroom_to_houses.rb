class AddBathroomToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :bathroom, :string
  end
end
