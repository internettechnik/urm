class AddIndexCodereferencesOfIssuesCodereferenceId < ActiveRecord::Migration

   def self.up
   
      add_index :codereferences_of_issues,:codereference_id, :name => 'codereferences_of_issues_codereference_id_idx'
   
   end

   def self.down
   
     remove_index :codereferences_of_issues, :name => 'codereferences_of_issues_codereference_id_idx'
   
   end

end
 
