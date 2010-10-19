class Employee < ActiveRecord::Base
  has_many :interview_session_schedules, :class_name => "InterviewSessionSchedule"
  has_many :interview_sessions, :through => :interview_session_schedules
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"
end
