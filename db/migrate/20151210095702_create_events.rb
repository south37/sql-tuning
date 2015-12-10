class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.json :payload

      t.timestamps null: false
    end
  end
end
