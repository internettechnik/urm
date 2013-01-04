class AddIndexDocumentsOfFindingsFindingId < ActiveRecord::Migration

   def self.up
   
      add_index :documents_of_findings,:finding_id, :name => 'documents_of_findings_finding_id_idx'
   
   end

   def self.down
   
     remove_index :documents_of_findings, :name => 'documents_of_findings_finding_id_idx'
   
   end

end
 
