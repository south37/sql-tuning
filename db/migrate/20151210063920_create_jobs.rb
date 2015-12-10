class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :id_without_index

      t.timestamps null: false
    end
  end
end
