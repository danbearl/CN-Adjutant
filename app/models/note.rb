class Note < ActiveRecord::Base
  attr_accessible :body, :project, :title
end
