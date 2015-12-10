class CreateTouristSpotWithoutMultipleIndices < ActiveRecord::Migration
  def change
    create_table :tourist_spot_without_multiple_indices do |t|
      t.text :name
      t.text :country, index: true
      t.text :city, index: true

      t.timestamps null: false
    end
  end
end
