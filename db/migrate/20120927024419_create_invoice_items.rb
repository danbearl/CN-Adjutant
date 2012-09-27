class CreateInvoiceItems < ActiveRecord::Migration
  def change
    create_table :invoice_items do |t|
      t.string :name
      t.text :description
      t.decimal :amount
      t.references :invoice

      t.timestamps
    end
  end
end
