class AddIndexFindingsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :findings,:report_id, :name => 'findings_report_id_idx'
   
   end

   def self.down
   
     remove_index :findings, :name => 'findings_report_id_idx'
   
   end

end
 
