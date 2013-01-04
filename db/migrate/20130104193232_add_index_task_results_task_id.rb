class AddIndexTaskResultsTaskId < ActiveRecord::Migration

   def self.up
   
      add_index :task_results,:task_id, :name => 'task_results_task_id_idx'
   
   end

   def self.down
   
     remove_index :task_results, :name => 'task_results_task_id_idx'
   
   end

end
 
