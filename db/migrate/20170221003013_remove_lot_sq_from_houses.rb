class RemoveLotSqFromHouses < ActiveRecord::Migration[5.0]
  def change
    remove_column :houses, :lot_sq, :integer
  end
end
