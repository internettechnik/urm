class AddIndexCodereferencesReportId < ActiveRecord::Migration

   def self.up
   
      add_index :codereferences,:report_id, :name => 'codereferences_report_id_idx'
   
   end

   def self.down
   
     remove_index :codereferences, :name => 'codereferences_report_id_idx'
   
   end

end
 
