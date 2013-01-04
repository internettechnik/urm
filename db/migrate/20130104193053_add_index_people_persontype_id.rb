class AddIndexPeoplePersontypeId < ActiveRecord::Migration

   def self.up
   
      add_index :people,:persontype_id, :name => 'people_persontype_id_idx'
   
   end

   def self.down
   
     remove_index :people, :name => 'people_persontype_id_idx'
   
   end

end
 
