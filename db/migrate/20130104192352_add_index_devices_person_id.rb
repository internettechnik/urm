class AddIndexDevicesPersonId < ActiveRecord::Migration

   def self.up
   
      add_index :devices,:person_id, :name => 'devices_person_id_idx'
   
   end

   def self.down
   
     remove_index :devices, :name => 'devices_person_id_idx'
   
   end

end
 
