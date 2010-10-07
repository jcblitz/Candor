class CreateInterviewSessions < ActiveRecord::Migration
  def self.up
    create_table :interview_sessions do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.string :panel_type
      t.integer :candidate_id

      t.timestamps
    end
  end

  def self.down
    drop_table :interview_sessions
  end
end
