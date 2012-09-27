class CreateChangeLogs < ActiveRecord::Migration
  def change
    create_table :change_logs do |t|
      t.date :date
      t.text :description
      t.references :project

      t.timestamps
    end
  end
end
