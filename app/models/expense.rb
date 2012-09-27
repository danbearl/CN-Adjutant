class Expense < ActiveRecord::Base
  attr_accessible :amount, :date, :description, :name, :project
end
