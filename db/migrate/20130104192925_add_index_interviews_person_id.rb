class AddIndexInterviewsPersonId < ActiveRecord::Migration

   def self.up
   
      add_index :interviews,:person_id, :name => 'interviews_person_id_idx'
   
   end

   def self.down
   
     remove_index :interviews, :name => 'interviews_person_id_idx'
   
   end

end
 
