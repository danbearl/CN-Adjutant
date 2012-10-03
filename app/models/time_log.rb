class TimeLog < ActiveRecord::Base
  attr_accessible :end_time, :project, :start_time, :total_time
  
  belongs_to :project
end
