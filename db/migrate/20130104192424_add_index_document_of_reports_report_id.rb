class AddIndexDocumentOfReportsReportId < ActiveRecord::Migration

   def self.up
   
      add_index :document_of_reports,:report_id, :name => 'document_of_reports_report_id_idx'
   
   end

   def self.down
   
     remove_index :document_of_reports, :name => 'document_of_reports_report_id_idx'
   
   end

end
 
