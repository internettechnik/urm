class AddIndexCodereferencesOfIssuesIssueId < ActiveRecord::Migration

   def self.up
   
      add_index :codereferences_of_issues,:issue_id, :name => 'codereferences_of_issues_issue_id_idx'
   
   end

   def self.down
   
     remove_index :codereferences_of_issues, :name => 'codereferences_of_issues_issue_id_idx'
   
   end

end
 
