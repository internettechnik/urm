class AddIndexSeverityOfissuefoundbyPeopleIssueId < ActiveRecord::Migration

   def self.up
   
      add_index :severity_ofissuefoundby_people,:issue_id, :name => 'severity_ofissuefoundby_people_issue_id_idx'
   
   end

   def self.down
   
     remove_index :severity_ofissuefoundby_people, :name => 'severity_ofissuefoundby_people_issue_id_idx'
   
   end

end
 
