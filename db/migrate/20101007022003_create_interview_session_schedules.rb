class CreateInterviewSessionSchedules < ActiveRecord::Migration
  def self.up
    create_table :interview_session_schedules do |t|
      t.integer :interview_session_id
      t.integer :employee_id
      t.boolean :accepted, :default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :interview_session_schedules
  end
end
