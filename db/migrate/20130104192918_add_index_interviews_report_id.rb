class AddIndexInterviewsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :interviews,:report_id, :name => 'interviews_report_id_idx'
   
   end

   def self.down
   
     remove_index :interviews, :name => 'interviews_report_id_idx'
   
   end

end
 
