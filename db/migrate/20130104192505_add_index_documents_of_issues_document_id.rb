class AddIndexDocumentsOfIssuesDocumentId < ActiveRecord::Migration

   def self.up
   
      add_index :documents_of_issues,:document_id, :name => 'documents_of_issues_document_id_idx'
   
   end

   def self.down
   
     remove_index :documents_of_issues, :name => 'documents_of_issues_document_id_idx'
   
   end

end
 
