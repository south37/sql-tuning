class CreateTouristSpots < ActiveRecord::Migration
  def change
    create_table :tourist_spots do |t|
      t.text :name
      t.text :country
      t.text :city, index: true

      t.timestamps null: false
    end

    add_index :tourist_spots, [:country, :city]
  end
end
