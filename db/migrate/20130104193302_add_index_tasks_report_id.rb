class AddIndexTasksReportId < ActiveRecord::Migration

   def self.up
   
      add_index :tasks,:report_id, :name => 'tasks_report_id_idx'
   
   end

   def self.down
   
     remove_index :tasks, :name => 'tasks_report_id_idx'
   
   end

end
 
