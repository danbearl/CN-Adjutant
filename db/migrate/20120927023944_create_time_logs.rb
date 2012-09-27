class CreateTimeLogs < ActiveRecord::Migration
  def change
    create_table :time_logs do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.decimal :total_time
      t.references :project

      t.timestamps
    end
  end
end
