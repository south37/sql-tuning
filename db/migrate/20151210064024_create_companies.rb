class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.text :country

      t.timestamps null: false
    end
  end
end
