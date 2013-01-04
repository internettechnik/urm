class AddIndexIssueFoundbyPeoplePersonId < ActiveRecord::Migration

   def self.up
   
      add_index :issue_foundby_people,:person_id, :name => 'issue_foundby_people_person_id_idx'
   
   end

   def self.down
   
     remove_index :issue_foundby_people, :name => 'issue_foundby_people_person_id_idx'
   
   end

end
 
