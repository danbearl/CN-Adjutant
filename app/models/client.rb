class Client < ActiveRecord::Base
  attr_accessible :address, :company, :email, :name, :notes, :phone
end
