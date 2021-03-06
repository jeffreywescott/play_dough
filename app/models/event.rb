
# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  url         :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ActiveRecord::Base
  attr_accessible :title, :description, :url, :start, :phase_events_attributes, :phases_attributes, :event_times_attributes
  # attr_accessible :
  has_many :phase_events
  has_many :phases, :through => :phase_events
  has_many :event_times
  accepts_nested_attributes_for :phase_events, :phases, :event_times


  # def parse_start_time
  # 	self.start_time
  has_many :cohort_events
  has_many :cohorts, through: :cohort_events

end
