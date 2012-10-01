class Note < ActiveRecord::Base
  attr_accessible :body, :project, :title

  belongs_to :project
end
