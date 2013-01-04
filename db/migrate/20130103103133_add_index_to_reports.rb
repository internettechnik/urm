class AddIndexToReports < ActiveRecord::Migration
  def self.up
      add_index :reports, :project_id, :name => 'report_projectid_idx'
    end

    def self.down
      remove_index :reports, :name => 'report_projectid_idx'
    end
end
