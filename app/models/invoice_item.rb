class InvoiceItem < ActiveRecord::Base
  attr_accessible :amount, :description, :invoice, :name
end
