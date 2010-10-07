class InterviewSessionSchedule < ActiveRecord::Base
  belongs_to :employee, :class_name => "Employee", :foreign_key => "employee_id"
  belongs_to :interview_session, :class_name => "InterviewSession", :foreign_key => "interview_session_id"
end
