class PhaseEvent < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :event 
  belongs_to :phase
end
