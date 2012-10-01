class Client < ActiveRecord::Base
  attr_accessible :address, :company, :email, :name, :notes, :phone

  has_many :projects
end
