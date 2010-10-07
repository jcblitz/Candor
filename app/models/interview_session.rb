class InterviewSession < ActiveRecord::Base
  belongs_to :candidate
  has_many :interview_session_schedules, :class_name => "InterviewSessionSchedule"
  has_many :employees, :through => :interview_session_schedules
end
