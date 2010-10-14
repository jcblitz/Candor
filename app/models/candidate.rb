class Candidate < ActiveRecord::Base
  has_many :interview_sessions, :class_name => "InterviewSession", :foreign_key => "candidate_id"
end
