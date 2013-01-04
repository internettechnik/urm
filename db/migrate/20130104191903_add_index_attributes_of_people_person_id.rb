class AddIndexAttributesOfPeoplePersonId < ActiveRecord::Migration

   def self.up
   
      add_index :attributes_of_people,:person_id, :name => 'attributes_of_people_person_id_idx'
   
   end

   def self.down
   
     remove_index :attributes_of_people, :name => 'attributes_of_people_person_id_idx'
   
   end

end
 
