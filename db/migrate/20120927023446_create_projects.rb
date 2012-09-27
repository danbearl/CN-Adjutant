class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :statement_of_work
      t.date :estimated_start_date
      t.date :actual_start_date
      t.date :estimated_completion_date
      t.date :actual_completion_date
      t.decimal :rate
      t.decimal :hours
      t.decimal :cost_to_date
      t.decimal :estimated_cost
      t.references :client

      t.timestamps
    end
  end
end
