class CreatePageViewLogs < ActiveRecord::Migration
  def change
    create_table :page_view_logs do |t|
      t.datetime :viewed_at

      t.timestamps null: false
    end
  end
end
