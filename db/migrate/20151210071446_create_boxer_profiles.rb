class CreateBoxerProfiles < ActiveRecord::Migration
  def change
    create_table :boxer_profiles do |t|
      t.text 'gender', index: true

      t.timestamps null: false
    end
  end
end
