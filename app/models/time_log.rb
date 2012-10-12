class TimeLog < ActiveRecord::Base
  attr_accessible :end_time, :project, :start_time, :total_time
  belongs_to :project

  def started_at
    start_time.to_s(:us)
  end

  def ended_at
    end_time.to_s(:us)
  end

  def total_time
    (end_time - start_time) / 3600
  end

end
