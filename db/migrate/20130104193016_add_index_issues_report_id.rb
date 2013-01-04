class AddIndexIssuesReportId < ActiveRecord::Migration

   def self.up
   
      add_index :issues,:report_id, :name => 'issues_report_id_idx'
   
   end

   def self.down
   
     remove_index :issues, :name => 'issues_report_id_idx'
   
   end

end
 
