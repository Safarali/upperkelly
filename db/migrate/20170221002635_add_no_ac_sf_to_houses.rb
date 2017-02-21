class AddNoAcSfToHouses < ActiveRecord::Migration[5.0]
  def change
    add_column :houses, :no_ac_sf, :integer
  end
end
