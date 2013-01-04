class AddIndexDocumentOfReportsDocumentId < ActiveRecord::Migration

   def self.up
   
      add_index :document_of_reports,:document_id, :name => 'document_of_reports_document_id_idx'
   
   end

   def self.down
   
     remove_index :document_of_reports, :name => 'document_of_reports_document_id_idx'
   
   end

end
 
