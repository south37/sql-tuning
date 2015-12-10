class CreateProfilesWithIndexesOnExpressions < ActiveRecord::Migration
  def change
    create_table :profiles_with_indexes_on_expressions do |t|
      t.references :user, index: true
      t.text :email

      t.timestamps null: false
    end
  end
end
