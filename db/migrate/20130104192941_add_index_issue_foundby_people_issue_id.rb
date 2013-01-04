class AddIndexIssueFoundbyPeopleIssueId < ActiveRecord::Migration

   def self.up
   
      add_index :issue_foundby_people,:issue_id, :name => 'issue_foundby_people_issue_id_idx'
   
   end

   def self.down
   
     remove_index :issue_foundby_people, :name => 'issue_foundby_people_issue_id_idx'
   
   end

end
 
