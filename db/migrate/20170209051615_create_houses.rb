class CreateHouses < ActiveRecord::Migration[5.0]
  def change
    create_table :houses do |t|
      t.string :name
      t.text :summary
      t.string :address
      t.integer :bedroom
      t.integer :bathroom
      t.integer :garage
      t.integer :sf
      t.integer :price
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
