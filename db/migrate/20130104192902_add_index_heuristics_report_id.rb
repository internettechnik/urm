class AddIndexHeuristicsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :heuristics,:report_id, :name => 'heuristics_report_id_idx'
   
   end

   def self.down
   
     remove_index :heuristics, :name => 'heuristics_report_id_idx'
   
   end

end
 
