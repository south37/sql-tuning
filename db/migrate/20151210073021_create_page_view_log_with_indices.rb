class CreatePageViewLogWithIndices < ActiveRecord::Migration
  def change
    create_table :page_view_log_with_indices do |t|
      t.datetime :viewed_at, index: true

      t.timestamps null: false
    end
  end
end
