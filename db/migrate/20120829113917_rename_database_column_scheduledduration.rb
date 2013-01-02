class RenameDatabaseColumnScheduledduration < ActiveRecord::Migration
  def self.up
  	rename_column :tasks, :durationscheduled, :scheduledduration
  end

  def self.down
  	rename_column :tasks, :scheduledduration, :durationscheduled
  end
end
