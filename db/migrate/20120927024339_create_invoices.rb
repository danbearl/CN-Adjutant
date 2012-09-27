class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :date_issued
      t.date :date_due
      t.date :date_paid
      t.decimal :amount_due
      t.references :client

      t.timestamps
    end
  end
end
