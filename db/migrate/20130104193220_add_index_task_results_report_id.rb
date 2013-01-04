class AddIndexTaskResultsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :task_results,:report_id, :name => 'task_results_report_id_idx'
   
   end

   def self.down
   
     remove_index :task_results, :name => 'task_results_report_id_idx'
   
   end

end
 
