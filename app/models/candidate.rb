class Candidate < ActiveRecord::Base
  has_many :interview_sessions, :class_name => "interview_session", :foreign_key => "candidate_id"
end
