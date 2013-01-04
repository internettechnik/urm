class AddIndexTaskResultsPersonId < ActiveRecord::Migration

   def self.up
   
      add_index :task_results,:person_id, :name => 'task_results_person_id_idx'
   
   end

   def self.down
   
     remove_index :task_results, :name => 'task_results_person_id_idx'
   
   end

end
 
