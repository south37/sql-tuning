class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.text :email, index: true
      t.text :gender, index: true

      t.timestamps null: false
    end
  end
end
