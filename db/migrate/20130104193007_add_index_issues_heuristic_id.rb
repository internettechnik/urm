class AddIndexIssuesHeuristicId < ActiveRecord::Migration

   def self.up
   
      add_index :issues,:heuristic_id, :name => 'issues_heuristic_id_idx'
   
   end

   def self.down
   
     remove_index :issues, :name => 'issues_heuristic_id_idx'
   
   end

end
 
