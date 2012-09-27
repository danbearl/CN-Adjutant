class Invoice < ActiveRecord::Base
  attr_accessible :amount_due, :client, :date_due, :date_issued, :date_paid
end
