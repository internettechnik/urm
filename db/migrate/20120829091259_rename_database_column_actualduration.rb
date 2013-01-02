class RenameDatabaseColumnActualduration < ActiveRecord::Migration
  def self.up
    rename_column :task_results, :durationactual, :actualduration
  end

  def self.down
    rename_column :task_results, :actualduration, :durationactual
  end
end
