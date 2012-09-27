class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :name
      t.text :description
      t.decimal :amount
      t.references :project

      t.timestamps
    end
  end
end
