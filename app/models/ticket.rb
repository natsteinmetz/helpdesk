class Ticket < ActiveRecord::Base
  attr_accessible :date, :description, :name
end
