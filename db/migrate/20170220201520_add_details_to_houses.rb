class AddDetailsToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :lot_name, :string
    add_column :houses, :lot_sq, :integer
  end
end
