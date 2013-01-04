class AddIndexSeverityOfissuefoundbyPeoplePersonId < ActiveRecord::Migration

   def self.up
   
      add_index :severity_ofissuefoundby_people,:person_id, :name => 'severity_ofissuefoundby_people_person_id_idx'
   
   end

   def self.down
   
     remove_index :severity_ofissuefoundby_people, :name => 'severity_ofissuefoundby_people_person_id_idx'
   
   end

end
 
