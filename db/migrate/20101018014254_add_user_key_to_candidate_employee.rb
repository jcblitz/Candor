class AddUserKeyToCandidateEmployee < ActiveRecord::Migration
  def self.up
    add_column :employees, :user_id, :integer
    add_column :candidates, :user_id, :integer
  end

  def self.down
    remove_column(:employees, :user_id)
    remove_column(:candidates, :user_id)
  end
end
