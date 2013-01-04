class AddIndexVideosPersonId < ActiveRecord::Migration

   def self.up
   
      add_index :videos,:person_id, :name => 'videos_person_id_idx'
   
   end

   def self.down
   
     remove_index :videos, :name => 'videos_person_id_idx'
   
   end

end
 
