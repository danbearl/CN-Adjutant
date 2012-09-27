class Project < ActiveRecord::Base
  attr_accessible :actual_completion_date, :actual_start_date, :client, :cost_to_date, :estimated_completion_date, :estimated_cost, :estimated_start_date, :hours, :name, :rate, :statement_of_work
end
